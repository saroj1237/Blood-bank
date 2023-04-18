import 'package:blood_bank/presentation/bloc/blood_camp_bloc/blood_camp_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BloodBankScreen extends StatefulWidget {
  const BloodBankScreen({super.key});

  @override
  State<BloodBankScreen> createState() => _BloodBankScreenState();
}

class _BloodBankScreenState extends State<BloodBankScreen> {
  @override
  void initState() {
    super.initState();
    context.read<BloodCampBloc>().add(const GetBloodBanks());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text("Blood Bank"),
      ),
      body: BlocBuilder<BloodCampBloc, BloodCampState>(
        builder: (context, state) {
          if (state.status == BloodCampStatus.loading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state.status == BloodCampStatus.loaded) {
            return ListView.builder(
              itemCount: state.bloodBanks.length,
              itemBuilder: (context, index) {
                final bloodBank = state.bloodBanks[index];
                return ListTile(
                  title: Text(bloodBank.blood_bank_name),
                  subtitle: Text(bloodBank.address),
                  trailing: TextButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.phone),
                      label: Text(bloodBank.contact)),
                );
              },
            );
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }
}
