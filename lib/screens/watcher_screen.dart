import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:macos_ui/macos_ui.dart';
import 'package:rta_flutter/screens/add_config_screen.dart';

import '../providers/providers.dart';
import '../utils.dart';

class WatcherScreen extends StatelessWidget {
  const WatcherScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Row(
            children: [
              Consumer(builder: (context, ref, child) {
                return Flexible(
                  child: PushButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const AddWatcherConfigScreen(),
                          ),
                        );
                      },
                      buttonSize: ButtonSize.large,
                      child: const Text('Add config')),
                );
              })
            ],
          ),
          Consumer(builder: (context, ref, child) {
            final configs = ref.watch(bookingWatcherProvider);
            return Expanded(
              child: ListView.builder(
                itemCount: configs.length,
                itemBuilder: (context, index) {
                  return TextButton(
                    onPressed: () {
                      context.push(
                        '/addWatcherConfig',
                        extra: configs[index],
                      );
                    },
                    child: Row(
                      children: [
                        Flexible(child: Text(configs[index].recipientEmail)),
                        const SizedBox(width: 16),
                        Flexible(
                          child: Text(CustomTimeParser.convertToDateString(
                              configs[index].startPreferredDate)),
                        ),
                        const SizedBox(width: 16),
                        Flexible(
                          child: Text(CustomTimeParser.convertToDateString(
                              configs[index].endPreferredDate)),
                        ),
                        const SizedBox(width: 16),
                        Flexible(
                          child: Text(CustomTimeParser.convertToTimeString(
                              configs[index].startPreferredTime)),
                        ),
                        const SizedBox(width: 16),
                        Flexible(
                          child: Text(
                            CustomTimeParser.convertToTimeString(
                                configs[index].endPreferredTime),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            );
          }),
        ],
      ),
    );
  }
}
