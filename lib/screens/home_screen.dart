import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:macos_ui/macos_ui.dart';
import 'package:rta_flutter/screens/screens.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double ratingValue = 0;
  double sliderValue = 0;
  bool value = false;

  int pageIndex = 0;

  late final searchFieldController = TextEditingController();
  late final scrollController = ScrollController();

  final List<Widget> pages = [
    CupertinoTabView(
      builder: (_) => const AvailabilityScreen(),
    ),
    const SettingsScreen(),
    Navigator(
      initialRoute: '/',
      onGenerateRoute: (settings) {
        return MaterialPageRoute(
          builder: (context) => const WatcherScreen(),
        );
      },
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return PlatformMenuBar(
      menus: const [
        PlatformMenu(
          label: 'NSW Driving Test Booking',
          menus: [
            PlatformProvidedMenuItem(
              type: PlatformProvidedMenuItemType.about,
            ),
            PlatformProvidedMenuItem(
              type: PlatformProvidedMenuItemType.quit,
            ),
          ],
        ),
        PlatformMenu(
          label: 'View',
          menus: [
            PlatformProvidedMenuItem(
              type: PlatformProvidedMenuItemType.toggleFullScreen,
            ),
          ],
        ),
        PlatformMenu(
          label: 'Window',
          menus: [
            PlatformProvidedMenuItem(
              type: PlatformProvidedMenuItemType.minimizeWindow,
            ),
            PlatformProvidedMenuItem(
              type: PlatformProvidedMenuItemType.zoomWindow,
            ),
          ],
        ),
      ],
      body: MacosWindow(
        sidebar: Sidebar(
          top: const MacosSearchField(),
          minWidth: 200,
          builder: (context, scrollController) {
            return SidebarItems(
              currentIndex: pageIndex,
              onChanged: (i) => setState(() => pageIndex = i),
              scrollController: scrollController,
              items: const [
                SidebarItem(
                  leading: MacosIcon(CupertinoIcons.doc),
                  label: Text('Availabilities'),
                ),
                SidebarItem(
                  leading: MacosIcon(CupertinoIcons.settings),
                  label: Text('Settings'),
                ),
                SidebarItem(
                  leading: MacosIcon(CupertinoIcons.eye),
                  label: Text('Watcher'),
                ),
              ],
            );
          },
        ),
        // drawer: Drawer(
        //   child: Column(
        //     children: [
        //       ListTile(
        //         title: const Text('Availabilities'),
        //         onTap: () {
        //           context.push('/availabilities');
        //         },
        //       ),
        //       ListTile(
        //         title: const Text('Settings'),
        //         onTap: () {
        //           context.push('/settings');
        //         },
        //       ),
        //     ],
        //   ),
        // ),
        child: IndexedStack(
          index: pageIndex,
          children: pages,
        ),
      ),
    );
  }
}
