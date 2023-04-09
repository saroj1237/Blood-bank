import 'package:blood_bank/core/resources/color_manager.dart';
import 'package:blood_bank/presentation/bloc/bloc/blood_services_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

class BloodStockScreen extends StatefulWidget {
  const BloodStockScreen({super.key});

  @override
  State<BloodStockScreen> createState() => _BloodStockScreenState();
}

class _BloodStockScreenState extends State<BloodStockScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    context.read<BloodServicesBloc>().add(const GetBloodStock());
    _tabController = TabController(length: 2, vsync: this);
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
          return state.status == BloodServiceStatus.loading ||
                  state.status == BloodServiceStatus.initial
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : Column(
                  children: [
                    DefaultTabController(
                        length: state.bloodStock.keys.length,
                        child: TabBar(
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
                        )),
                    Divider(),
                    Expanded(
                      child: TabBarView(
                        children: state.bloodStock.keys
                            .map((e) => Text(e.toString()))
                            .toList(),
                      ),
                    ),
                  ],
                );
          //  ListView.builder(
          //     itemCount: state.bloodStock.length,
          //     itemBuilder: (context, index) {
          //       final key = (state.bloodStock.keys.toList())[index];

          //       return SfDataGrid(
          //         source: employeeDataSource,
          //         columnWidthMode: ColumnWidthMode.fill,
          //         columns: <GridColumn>[
          //           GridColumn(
          //               columnName: 'id',
          //               label: Container(
          //                   padding: const EdgeInsets.all(16.0),
          //                   alignment: Alignment.center,
          //                   child: const Text(
          //                     'ID',
          //                   ))),
          //           GridColumn(
          //               columnName: 'name',
          //               label: Container(
          //                   padding: const EdgeInsets.all(8.0),
          //                   alignment: Alignment.center,
          //                   child: const Text('Name'))),
          //           GridColumn(
          //               columnName: 'designation',
          //               label: Container(
          //                   padding: const EdgeInsets.all(8.0),
          //                   alignment: Alignment.center,
          //                   child: const Text(
          //                     'Designation',
          //                     overflow: TextOverflow.ellipsis,
          //                   ))),
          //           GridColumn(
          //               columnName: 'salary',
          //               label: Container(
          //                   padding: const EdgeInsets.all(8.0),
          //                   alignment: Alignment.center,
          //                   child: const Text('Salary'))),
          //         ],
          //       );
          //     },
          //   );
        },
      ),
    );
  }
}

class EmployeeDataSource extends DataGridSource {
  /// Creates the employee data source class with required details.
  EmployeeDataSource({required List<Map<String, dynamic>> employeeData}) {
    _employeeData = employeeData
        .map<DataGridRow>((e) => DataGridRow(cells: [
              DataGridCell<int>(
                  columnName: 'blood type', value: e['bloodtype']),
              DataGridCell<String>(
                  columnName: 'component count', value: e['componentcount']),
              DataGridCell<String>(
                  columnName: 'reserve count', value: e['reservecount']),
            ]))
        .toList();
  }

  List<DataGridRow> _employeeData = [];

  @override
  List<DataGridRow> get rows => _employeeData;

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
