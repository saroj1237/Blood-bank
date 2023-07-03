import 'package:blood_bank/core/helpers/make_phonecall.dart';
import 'package:blood_bank/presentation/bloc/aph_bloc/a_p_h_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AmbulanceTab extends StatelessWidget {
  const AmbulanceTab({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<APHBloc, APHState>(builder: (context, state) {
      if (state.status == APHStatus.loading) {
        return const Center(child: CircularProgressIndicator());
      } else if (state.status == APHStatus.success) {
        return ListView.builder(
          itemCount: state.ambulances.length,
          itemBuilder: (context, index) {
            final ambulance = state.ambulances[index];
            return ListTile(
              title: Text(ambulance.club_name),
              subtitle: Text(ambulance.address),
              trailing: TextButton.icon(
                onPressed: () => makePhoneCall(ambulance.contact),
                icon: const Icon(Icons.phone),
                label: Text(ambulance.contact),
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
