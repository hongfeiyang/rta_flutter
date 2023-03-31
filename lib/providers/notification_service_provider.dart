import 'package:flutter/foundation.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final notificationServiceProvider = Provider<NotificationService>((ref) {
  throw UnimplementedError();
});

class NotificationService {
  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  int _id = 0;

  Future<void> init() async {
    /// Note: permissions aren't requested here just to demonstrate that can be
    /// done later
    final DarwinInitializationSettings initializationSettingsIOS =
        DarwinInitializationSettings(onDidReceiveLocalNotification: (
      int id,
      String? title,
      String? body,
      String? payload,
    ) async {
      debugPrint('did receive notification');
    });
    const DarwinInitializationSettings initializationSettingsMacOS =
        DarwinInitializationSettings();
    final LinuxInitializationSettings initializationSettingsLinux =
        LinuxInitializationSettings(
      defaultActionName: 'Open notification',
      defaultIcon: AssetsLinuxIcon('icons/app_icon.png'),
    );

    const AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings('app_icon');

    final InitializationSettings initializationSettings =
        InitializationSettings(
      android: initializationSettingsAndroid,
      iOS: initializationSettingsIOS,
      macOS: initializationSettingsMacOS,
      linux: initializationSettingsLinux,
    );

    // final NotificationAppLaunchDetails? notificationAppLaunchDetails =
    //     !kIsWeb && Platform.isLinux
    //         ? null
    //         : await flutterLocalNotificationsPlugin
    //             .getNotificationAppLaunchDetails();

    await flutterLocalNotificationsPlugin.initialize(
      initializationSettings,
      onDidReceiveNotificationResponse: (details) {
        debugPrint('notification: $details');
      },
    );
  }

  Future<void> requestPermissions() async {
    flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
            IOSFlutterLocalNotificationsPlugin>()
        ?.requestPermissions(
          alert: true,
          badge: true,
          sound: true,
        );
    final result = await flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
            MacOSFlutterLocalNotificationsPlugin>()
        ?.requestPermissions();
    print('request permission: $result');
  }

  Future<void> showNotificationCustomSound(
      String titleText, String bodyText) async {
    const AndroidNotificationDetails androidPlatformChannelSpecifics =
        AndroidNotificationDetails(
      'your other channel id',
      'your other channel name',
      channelDescription: 'your other channel description',
      sound: RawResourceAndroidNotificationSound('slow_spring_board'),
    );
    const DarwinNotificationDetails iOSPlatformChannelSpecifics =
        DarwinNotificationDetails(sound: 'slow_spring_board.aiff');
    const DarwinNotificationDetails macOSPlatformChannelSpecifics =
        DarwinNotificationDetails(sound: 'slow_spring_board.aiff');
    final LinuxNotificationDetails linuxPlatformChannelSpecifics =
        LinuxNotificationDetails(
      sound: AssetsLinuxSound('sound/slow_spring_board.mp3'),
    );
    final NotificationDetails platformChannelSpecifics = NotificationDetails(
      android: androidPlatformChannelSpecifics,
      iOS: iOSPlatformChannelSpecifics,
      macOS: macOSPlatformChannelSpecifics,
      linux: linuxPlatformChannelSpecifics,
    );
    await flutterLocalNotificationsPlugin.show(
      _id++,
      titleText,
      bodyText,
      platformChannelSpecifics,
    );
  }
}
