import 'package:blood_bank/core/resources/color_manager.dart';
import 'package:blood_bank/presentation/bloc/blood_services_bloc/blood_services_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

class BloodStockScreen extends StatefulWidget {
  const BloodStockScreen({super.key});

  @override
  State<BloodStockScreen> createState() => _BloodStockScreenState();
}

class _BloodStockScreenState extends State<BloodStockScreen>
    with TickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    context.read<BloodServicesBloc>().add(const GetBloodStock());
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text("Blood Stock"),
      ),
      body: BlocBuilder<BloodServicesBloc, BloodServicesState>(
        builder: (context, state) {
          if (state.status == BloodServiceStatus.loading ||
              state.status == BloodServiceStatus.initial) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state.status == BloodServiceStatus.loaded) {
            _tabController =
                TabController(length: state.bloodStock.length, vsync: this);
            return Column(
              children: [
                TabBar(
                  controller: _tabController,
                  isScrollable: true,
                  padding: EdgeInsets.zero,
                  unselectedLabelColor: AppColor.secondaryColor,
                  dividerColor: AppColor.blue,
                  labelColor: AppColor.grey,
                  tabs: state.bloodStock.keys
                      .map((e) => Tab(
                            text: e,
                            iconMargin: EdgeInsets.zero,
                          ))
                      .toList(),
                ),
                // const Divider(),
                Expanded(
                  child: TabBarView(
                    controller: _tabController,
                    children: state.bloodStock.keys.map((e) {
                      final bloodList = state.bloodStock[e] as List<dynamic>;
                      return SfDataGrid(
                          source: BloodDataSource(bloodData: bloodList),
                          columnWidthMode: ColumnWidthMode.fill,
                          columns: [
                            GridColumn(
                                columnName: 'blood type',
                                label: Container(
                                    padding: const EdgeInsets.all(16.0),
                                    alignment: Alignment.center,
                                    child: const Text(
                                      'Blood Type',
                                    ))),
                            GridColumn(
                                columnName: 'component Count',
                                label: Container(
                                    padding: const EdgeInsets.all(8.0),
                                    alignment: Alignment.center,
                                    child: const Text('Component Count'))),
                            GridColumn(
                                columnName: 'reserve count',
                                label: Container(
                                  padding: const EdgeInsets.all(8.0),
                                  alignment: Alignment.center,
                                  child: const Text(
                                    'Reserve Count',
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                )),
                          ]);
                    }).toList(),
                  ),
                ),
              ],
            );
          }
          return SizedBox.shrink();
        },
      ),
    );
  }
}

class BloodDataSource extends DataGridSource {
  /// Creates the employee data source class with required details.
  BloodDataSource({required List<dynamic> bloodData}) {
    _bloodData = bloodData
        .map<DataGridRow>((e) => DataGridRow(cells: [
              DataGridCell<String>(
                  columnName: 'blood type', value: e['bloodtype']),
              DataGridCell<int>(
                  columnName: 'component count', value: e['componentcount']),
              DataGridCell<int>(
                  columnName: 'reserve count', value: e['reservecount']),
            ]))
        .toList();
  }

  List<DataGridRow> _bloodData = [];

  @override
  List<DataGridRow> get rows => _bloodData;

  @override
  DataGridRowAdapter buildRow(DataGridRow row) {
    return DataGridRowAdapter(
        cells: row.getCells().map<Widget>((e) {
      return Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(8.0),
        child: Text(e.value.toString()),
      );
    }).toList());
  }
}
