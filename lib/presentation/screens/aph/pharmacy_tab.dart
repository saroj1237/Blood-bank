import 'package:blood_bank/core/helpers/make_phonecall.dart';
import 'package:blood_bank/presentation/bloc/aph_bloc/a_p_h_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PharmacyTab extends StatelessWidget {
  const PharmacyTab({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<APHBloc, APHState>(
      builder: (context, state) {
        if (state.status == APHStatus.loading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state.status == APHStatus.success) {
          return ListView.builder(
            itemCount: state.pharmacies.length,
            itemBuilder: (context, index) {
              final pharmacy = state.pharmacies[index];
              return ListTile(
                title: Text(pharmacy.pharmacy_name),
                subtitle: Text(pharmacy.address),
                leading: const FaIcon(FontAwesomeIcons.hospital),
                trailing: TextButton.icon(
                  onPressed: () => makePhoneCall(pharmacy.contact),
                  icon: const Icon(Icons.phone),
                  label: Text(pharmacy.contact),
                ),
              );
            },
          );
        } else if (state.status == APHStatus.error) {
          return Center(
              child: Text(state.errorMsg ?? "Unknown error occurred."));
        }
        return const SizedBox.shrink();
      },
    );
  }
}
