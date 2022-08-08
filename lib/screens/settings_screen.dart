import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:macos_ui/macos_ui.dart';
import 'package:rta_flutter/providers/settings_provider.dart';

import '../providers/providers.dart';

class SettingsScreen extends ConsumerStatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends ConsumerState<SettingsScreen> {
  late final usernameController = TextEditingController();
  late final intervalController = TextEditingController();
  late final passwordController = TextEditingController();
  late final concurrentProcessController = TextEditingController();

  @override
  void initState() {
    usernameController.text = ref.read(settingsProvider).username ?? '';
    intervalController.text =
        (ref.read(autoUpdateProvider).interval / 60).round().toString();
    passwordController.text = ref.read(settingsProvider).password ?? '';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MacosScaffold(
      children: [
        ContentArea(
          builder: (context, scrollController) {
            return ListView(
              padding: const EdgeInsets.all(8),
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text('Enable auto update: '),
                    Consumer(
                      builder: (context, ref, child) {
                        final enabled = ref.watch(autoUpdateProvider
                            .select((value) => value.enabled));
                        return MacosSwitch(
                          value: enabled,
                          onChanged: (newValue) {
                            ref
                                .read(autoUpdateProvider.notifier)
                                .toggleAutoUpdate();
                          },
                        );
                      },
                    ),
                    Consumer(builder: (context, ref, child) {
                      return Text(ref.watch(autoUpdateProvider
                              .select((value) => value.enabled))
                          ? 'On'
                          : 'Off');
                    }),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Auto refresh time:'),
                    Expanded(
                      child: Consumer(
                        builder: (context, ref, child) {
                          final enabled = ref.watch(autoUpdateProvider
                              .select((value) => value.enabled));
                          final interval = ref.watch(autoUpdateProvider
                              .select((value) => value.interval));
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: MacosTextField(
                              controller: intervalController,
                              enabled: enabled,
                              onChanged: (value) {
                                final time = int.tryParse(value);
                                if (time != null) {
                                  ref
                                      .read(autoUpdateProvider.notifier)
                                      .updateAutoUpdateInterval(time);
                                }
                              },
                            ),
                          );
                        },
                      ),
                    ),
                    Consumer(builder: (context, ref, child) {
                      return Text(
                          '${(ref.watch(autoUpdateProvider.select((value) => value.interval)) / 60).round()} min');
                    }),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Number of concurrent processes:'),
                    Expanded(
                      child: Consumer(
                        builder: (context, ref, child) {
                          final numProc = ref.watch(concurrentProcessProvider
                              .select((value) => value.current));
                          final max = ref.watch(concurrentProcessProvider
                              .select((value) => value.max));
                          final min = ref.watch(concurrentProcessProvider
                              .select((value) => value.min));

                          return MacosTextField(
                            controller: concurrentProcessController,
                            onChanged: (value) {
                              ref
                                  .read(concurrentProcessProvider.notifier)
                                  .updateCurrent(int.tryParse(value) ?? 1);
                            },
                          );
                        },
                      ),
                    ),
                    Consumer(builder: (context, ref, child) {
                      return Text(
                          '${ref.watch(concurrentProcessProvider.select((value) => value.current)).round()}');
                    }),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Enable notifications:'),
                    Expanded(
                      child: Consumer(
                        builder: (context, ref, child) {
                          return TextButton(
                            child: const Text('Enable notifications'),
                            onPressed: () {
                              ref
                                  .read(notificationServiceProvider)
                                  .requestPermissions();
                            },
                          );
                        },
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Username:'),
                    Expanded(
                      child: Consumer(
                        builder: (context, ref, child) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: MacosTextField(
                              controller: usernameController,
                              onChanged: (value) {
                                ref
                                    .read(settingsProvider.notifier)
                                    .onUpdateUsername(value);
                              },
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Password:'),
                    Expanded(
                      child: Consumer(
                        builder: (context, ref, child) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: MacosTextField(
                              controller: passwordController,
                              onChanged: (value) {
                                ref
                                    .read(settingsProvider.notifier)
                                    .onUpdatePassword(value);
                              },
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ],
            );
          },
        ),
      ],
    );
  }
}
