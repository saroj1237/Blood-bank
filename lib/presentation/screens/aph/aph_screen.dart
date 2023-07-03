import 'package:blood_bank/presentation/bloc/aph_bloc/a_p_h_bloc.dart';
import 'package:blood_bank/presentation/screens/aph/ambulance_tab.dart';
import 'package:blood_bank/presentation/screens/aph/hospital_tab.dart';
import 'package:blood_bank/presentation/screens/aph/pharmacy_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class APHScreen extends StatefulWidget {
  const APHScreen({
    super.key,
    this.tabIndex = 0,
    required this.title,
  });
  final int tabIndex;
  final String title;
  static const List<String> tabLabels = ['Ambulance', 'Hospital', 'Pharmacy'];
  static List<Tab> tabs = <Tab>[
    Tab(text: tabLabels[0]),
    Tab(text: tabLabels[1]),
    Tab(text: tabLabels[2]),
  ];

  @override
  State<APHScreen> createState() => _APHScreenState();
}

class _APHScreenState extends State<APHScreen>
    with SingleTickerProviderStateMixin {
  late String appBarTitle;
  late TabController tabController;
  @override
  void initState() {
    appBarTitle = widget.title;
    tabController = TabController(
      length: 3,
      vsync: this,
      initialIndex: widget.tabIndex,
    );
    tabController.addListener(() {
      setState(() {
        appBarTitle = APHScreen.tabLabels[tabController.index];
      });
    });
    super.initState();
    context.read<APHBloc>().add(const GetAmbulances());
    context.read<APHBloc>().add(const GetPharmacies());
    context.read<APHBloc>().add(const GetHospitals());
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: APHScreen.tabs.length,
      // initialIndex: widget.tabIndex,
      child: Scaffold(
        appBar: AppBar(
          title: Text(appBarTitle),
          bottom: TabBar(
            controller: tabController,
            onTap: (index) {
              setState(() {
                appBarTitle = APHScreen.tabLabels[index];
              });
            },
            tabs: APHScreen.tabs,
          ),
        ),
        body: TabBarView(
          controller: tabController,
          children: const [
            AmbulanceTab(),
            HospitalTab(),
            PharmacyTab(),
          ],
        ),
      ),
    );
  }
}
