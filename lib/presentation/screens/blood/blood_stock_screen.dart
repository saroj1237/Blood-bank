import 'package:blood_bank/presentation/bloc/bloc/blood_services_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BloodStockScreen extends StatefulWidget {
  const BloodStockScreen({super.key});

  @override
  State<BloodStockScreen> createState() => _BloodStockScreenState();
}

class _BloodStockScreenState extends State<BloodStockScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<BloodServicesBloc>().add(const GetBloodStock());
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
              : ListView.builder(
                  itemCount: state.bloodStock.length,
                  itemBuilder: (context, index) {
                    final key = (state.bloodStock.keys.toList())[index];

                    return Text("$key");
                  },
                );
        },
      ),
    );
  }
}
