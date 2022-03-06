import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rta_flutter/models/location_info.dart';
import 'package:rta_flutter/models/location_state.dart';
import 'package:rta_flutter/providers/location_availability_provider.dart';

import '../utils.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key, required this.locationId}) : super(key: key);

  final String locationId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Consumer(builder: (context, ref, child) {
          final location =
              ref.watch(allLocationsAvailabilityProvider).firstWhere(
                    (element) => element.locationInfo.location == locationId,
                  );
          return SingleChildScrollView(
            child: PaginatedDataTable(
              rowsPerPage: 30,
              dataRowHeight: 30,
              columns: const [
                DataColumn(
                  label: Text('Vacancies'),
                )
              ],
              source: DetailsDataSource(location: location),
            ),
          );
        }),
      ),
    );
  }
}

class DetailsDataSource extends DataTableSource {
  final LocationState location;

  DetailsDataSource({required this.location});

  List<ListTimeSlot> get slots {
    return location.locationInfo.result!.ajaxresult.slots!.listTimeSlot
        .where((element) => element.availability == true)
        .toList();
  }

  @override
  DataRow? getRow(int index) {
    final date = slots[index].startTime != null
        ? CustomTimeParser.dateFormatter.format(slots[index].startTime!)
        : null;

    return DataRow(cells: [
      DataCell(
        Text('$date'),
      ),
    ]);
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => slots.length;

  @override
  int get selectedRowCount => 0;
}
