import 'package:blood_bank/presentation/bloc/aph_bloc/a_p_h_bloc.dart';
import 'package:blood_bank/presentation/screens/aph/ambulance_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class APHScreen extends StatefulWidget {
  const APHScreen({super.key, this.tabIndex = 0});
  final int tabIndex;
  static const List<Tab> tabs = <Tab>[
    Tab(text: 'Ambulance'),
    Tab(text: 'Hospital'),
    Tab(text: 'Pharmacy'),
  ];
  @override
  State<APHScreen> createState() => _APHScreenState();
}

class _APHScreenState extends State<APHScreen> {
  @override
  void initState() {
    super.initState();
    context.read<APHBloc>().add(const GetAmbulances());
    context.read<APHBloc>().add(const GetPharmacies());
    context.read<APHBloc>().add(const GetHospitals());
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: APHScreen.tabs.length,
      initialIndex: widget.tabIndex,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("APH Services"),
          bottom: const TabBar(
            tabs: APHScreen.tabs,
          ),
        ),
        body: const TabBarView(
          children: [
            AmbulanceTab(),
            Text("Hello1 "),
            Text("Hello2 "),
          ],
        ),
      ),
    );
  }
}
