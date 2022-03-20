import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rta_flutter/providers/settings_provider.dart';

import '../providers/providers.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ListView(
          padding: const EdgeInsets.all(8),
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text('Enable auto update: '),
                Consumer(
                  builder: (context, ref, child) {
                    final enabled = ref.watch(
                        autoUpdateProvider.select((value) => value.enabled));
                    return Switch(
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
                  return Text(ref.watch(
                          autoUpdateProvider.select((value) => value.enabled))
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
                      final enabled = ref.watch(
                          autoUpdateProvider.select((value) => value.enabled));
                      final interval = ref.watch(
                          autoUpdateProvider.select((value) => value.interval));
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: TextFormField(
                          initialValue: (interval / 60).round().toString(),
                          enabled: enabled,
                          decoration: const InputDecoration(
                              border: OutlineInputBorder()),
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
                      return Slider(
                        divisions: max - min,
                        min: min.toDouble(),
                        max: max.toDouble(),
                        value: numProc.toDouble(),
                        onChanged: (value) {
                          ref
                              .read(concurrentProcessProvider.notifier)
                              .updateCurrent(value.toInt());
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
                        child: TextFormField(
                          initialValue: ref.watch(settingsProvider
                              .select((value) => value.username)),
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
                        child: TextFormField(
                          initialValue: ref.watch(settingsProvider
                              .select((value) => value.password)),
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
        ),
      ),
    );
  }
}
