import 'package:blood_bank/core/helpers/make_phonecall.dart';
import 'package:blood_bank/presentation/bloc/aph_bloc/a_p_h_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HospitalTab extends StatelessWidget {
  const HospitalTab({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<APHBloc, APHState>(builder: (context, state) {
      if (state.status == APHStatus.loading) {
        return const Center(child: CircularProgressIndicator());
      } else if (state.status == APHStatus.success) {
        return ListView.builder(
          itemCount: state.hospitals.length,
          itemBuilder: (context, index) {
            final hospital = state.hospitals[index];
            return ListTile(
              title: Text(hospital.hospital_name),
              subtitle: Text(hospital.address),
              trailing: TextButton.icon(
                onPressed: () => makePhoneCall(hospital.contact),
                icon: const Icon(Icons.phone),
                label: Text(hospital.contact),
              ),
            );
          },
        );
      } else if (state.status == APHStatus.error) {
        return Center(child: Text(state.errorMsg ?? "Unknown error occurred."));
      }
      return const SizedBox.shrink();
    });
  }
}
