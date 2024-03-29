import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:validators/validators.dart';

import '../modals/modals.dart';
import '../models/booking_watcher_user_config.dart';
import '../providers/providers.dart';

class AddWatcherConfigScreen extends StatefulWidget {
  const AddWatcherConfigScreen({Key? key, this.config}) : super(key: key);

  final BookingWatcherUserConfig? config;

  @override
  State<AddWatcherConfigScreen> createState() => _AddWatcherConfigScreenState();
}

class _AddWatcherConfigScreenState extends State<AddWatcherConfigScreen> {
  String? email;
  DateTime? startTime;
  DateTime? endTime;
  DateTime? startDate;
  DateTime? endDate;

  DateFormat timeFormat = DateFormat('H:mm');
  DateFormat dateFormat = DateFormat('dd/MM/yyyy');

  List<String> locationIds = [];

  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    if (widget.config != null) {
      email = widget.config!.recipientEmail;
      startTime = DateTimeField.convert(widget.config!.startPreferredTime)!;
      endTime = DateTimeField.convert(widget.config!.endPreferredTime)!;
      startDate = widget.config!.startPreferredDate;
      endDate = widget.config!.endPreferredDate;
      locationIds = widget.config!.preferredLocationIds;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Consumer(
            builder: (context, ref, child) {
              return Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                child: TextButton.icon(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      /// Passing validation guaranteed these fields are not null
                      final newConfig = BookingWatcherUserConfig(
                        recipientEmail: email!,
                        startPreferredDate: startDate!,
                        endPreferredDate: endDate!,
                        startPreferredTime: TimeOfDay.fromDateTime(
                          startTime!,
                        ),
                        endPreferredTime: TimeOfDay.fromDateTime(endTime!),
                        preferredLocationIds: locationIds,
                      );

                      if (widget.config == null) {
                        ref
                            .read(bookingWatcherProvider.notifier)
                            .addConfig(newConfig);
                      } else {
                        ref
                            .read(bookingWatcherProvider.notifier)
                            .updateConfig(widget.config!, newConfig);
                      }

                      context.pop();
                    }
                  },
                  icon: Icon(
                    widget.config == null ? Icons.add : Icons.change_circle,
                  ),
                  label: Text(
                    widget.config == null ? 'Add' : 'Update',
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                  ),
                ),
              );
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                initialValue: email,
                decoration: const InputDecoration(
                  hintText: 'Email',
                ),
                onChanged: (value) {
                  email = value;
                  setState(() {});
                },
                validator: (value) {
                  if (value != null && isEmail(value)) {
                    return null;
                  }
                  return 'Please enter a valid email address';
                },
              ),
              Row(
                children: [
                  Flexible(
                    child: DateTimeField(
                      initialValue: startDate,
                      decoration:
                          const InputDecoration(labelText: 'Start Date'),
                      onShowPicker: (context, currentValue) async {
                        final date = await showDatePicker(
                          context: context,
                          firstDate: DateTime.now(),
                          initialDate: DateTime.now(),
                          lastDate:
                              DateTime.now().add(const Duration(days: 7 * 6)),
                        );
                        return date;
                      },
                      format: dateFormat,
                      onChanged: (value) {
                        setState(() {
                          startDate = value;
                        });
                      },
                      validator: (value) {
                        if (value == null) {
                          return 'Select a date';
                        }
                        return null;
                      },
                    ),
                  ),
                  const SizedBox(width: 8),
                  Flexible(
                    child: DateTimeField(
                      initialValue: endDate,
                      decoration: const InputDecoration(labelText: 'End Date'),
                      onShowPicker: (context, currentValue) async {
                        final date = await showDatePicker(
                          context: context,
                          firstDate: DateTime.now(),
                          initialDate: DateTime.now(),
                          lastDate:
                              DateTime.now().add(const Duration(days: 7 * 6)),
                        );
                        return date;
                      },
                      format: dateFormat,
                      enabled: startDate != null,
                      onChanged: (value) {
                        setState(() {
                          endDate = value;
                        });
                      },
                      validator: (value) {
                        if (value == null) {
                          return 'Select a date';
                        }
                        if (value.isBefore(startDate!)) {
                          return 'Date must be after Start Date';
                        }
                        return null;
                      },
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Flexible(
                    child: DateTimeField(
                      initialValue: startTime,
                      decoration:
                          const InputDecoration(labelText: 'Start Time'),
                      onShowPicker: (context, currentValue) async {
                        final time = await showTimePicker(
                          context: context,
                          initialTime: const TimeOfDay(hour: 12, minute: 0),
                        );
                        return DateTimeField.convert(time);
                      },
                      format: timeFormat,
                      onChanged: (value) {
                        setState(() {
                          startTime = value;
                        });
                      },
                      validator: (value) {
                        if (value == null) {
                          return 'Select a time';
                        }
                        return null;
                      },
                    ),
                  ),
                  const SizedBox(width: 8),
                  Flexible(
                    child: DateTimeField(
                      initialValue: endTime,
                      decoration: const InputDecoration(labelText: 'End Time'),
                      onShowPicker: (context, currentValue) async {
                        final time = await showTimePicker(
                          context: context,
                          initialTime: const TimeOfDay(hour: 14, minute: 0),
                        );
                        return DateTimeField.convert(time);
                      },
                      format: timeFormat,
                      enabled: startTime != null,
                      onChanged: (value) {
                        setState(() {
                          endTime = value;
                        });
                      },
                      validator: (value) {
                        if (value == null) {
                          return 'Select a time';
                        }
                        if (value.isBefore(startTime!)) {
                          return 'Time must be after Start Time';
                        }
                        return null;
                      },
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Selected Locations ↓"),
                    TextButton.icon(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.blue.shade800),
                        foregroundColor:
                            MaterialStateProperty.all(Colors.white),
                        padding: MaterialStateProperty.all(
                          const EdgeInsets.symmetric(
                              vertical: 16, horizontal: 8),
                        ),
                      ),
                      onPressed: () async {
                        final ids = await LocationPickerDialog.show(
                            context, locationIds);
                        if (ids != null) {
                          locationIds = [...ids];
                        }
                        setState(() {});
                      },
                      icon: const Icon(Icons.add),
                      label: const Text('Pick locations'),
                    ),
                  ],
                ),
              ),
              Consumer(builder: (context, ref, child) {
                final items = ref.watch(testCenterLocationsProvider);
                return items.when(
                  data: (data) {
                    return Expanded(
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          border: Border.all(width: 1),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: ListView.builder(
                          padding: const EdgeInsets.all(16),
                          shrinkWrap: true,
                          itemCount: locationIds.length,
                          itemBuilder: (context, index) {
                            final location = data.firstWhere(
                              (x) =>
                                  x.locationInfo.location == locationIds[index],
                            );
                            return Text(location.name);
                          },
                        ),
                      ),
                    );
                  },
                  error: (e, stacktrace) {
                    return const Icon(Icons.error);
                  },
                  loading: () => const CircularProgressIndicator(),
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}
