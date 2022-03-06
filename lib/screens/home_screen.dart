import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:rta_flutter/utils.dart';

import '../providers/providers.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: Column(
          children: [
            ListTile(
              title: const Text('Availabilities'),
              onTap: () {
                context.push('/availabilities');
              },
            ),
            ListTile(
              title: const Text('Settings'),
              onTap: () {
                context.push('/settings');
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Row(
              children: [
                Consumer(builder: (context, ref, child) {
                  return Flexible(
                    child: TextButton(
                        onPressed: () {
                          context.push('/addWatcherConfig');
                        },
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
                          Flexible(
                              child: Text('${configs[index].recipientEmail}')),
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
      ),
    );
  }
}
