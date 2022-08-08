import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:macos_ui/macos_ui.dart';
import 'package:path_provider/path_provider.dart';
import 'package:rta_flutter/providers/providers.dart';

import 'models/models.dart';
import 'screens/screens.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final script = await rootBundle.loadString('assets/scrape_availability.py');
  final settingsFile = await rootBundle.loadString('assets/settings.json');
  final supportDir = await getApplicationSupportDirectory();

  final scriptFilePath = '${supportDir.path}/scrape_availability.py';
  final settingsFilePath = '${supportDir.path}/settings.json';
  File(scriptFilePath).writeAsStringSync(script);
  File(settingsFilePath).writeAsStringSync(settingsFile);

  final notificationService = NotificationService();
  await notificationService.init();
  runApp(
    ProviderScope(
      overrides: [
        notificationServiceProvider.overrideWithValue(notificationService),
        resourceProvider.overrideWithValue(
          ResourceState(
            scriptFilePath: scriptFilePath,
            settingsFilePath: settingsFilePath,
            applicationSupportDirectoryPath: supportDir.path,
          ),
        )
      ],
      child: const MyApp(),
    ),
  );
}

Future<void> initialSetup() async {}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.

  final _router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: '/availabilities',
        builder: (context, state) => const AvailabilityScreen(),
      ),
      GoRoute(
        path: '/settings',
        builder: (context, state) => const SettingsScreen(),
      ),
      GoRoute(
        path: '/addWatcherConfig',
        builder: (context, state) => AddWatcherConfigScreen(
            config: state.extra as BookingWatcherUserConfig?),
      ),
      GoRoute(
        path: '/details/:id',
        builder: (context, state) =>
            DetailsScreen(locationId: state.params['id']!),
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, child) {
      return MacosApp.router(
        title: 'macos_ui Widget Gallery',
        theme: MacosThemeData.light(),
        darkTheme: MacosThemeData.dark(),
        themeMode: ref.watch(appThemeProvider),
        debugShowCheckedModeBanner: false,
        routeInformationParser: _router.routeInformationParser,
        routerDelegate: _router.routerDelegate,
        localizationsDelegates: const [GlobalMaterialLocalizations.delegate],
        supportedLocales: const [Locale('en', 'AU')],
      );
    });
  }
}
