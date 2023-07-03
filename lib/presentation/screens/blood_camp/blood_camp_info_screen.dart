import 'package:blood_bank/core/resources/resources.dart';
import 'package:blood_bank/domain/models/blood/camp/camp_history_model.dart';
import 'package:blood_bank/presentation/bloc/blood_camp_bloc/blood_camp_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BloodCampInfoScreen extends StatefulWidget {
  const BloodCampInfoScreen({super.key});

  static const List<Tab> tabs = <Tab>[
    Tab(text: 'Upcoming camps'),
    Tab(text: 'Camp History'),
  ];

  @override
  State<BloodCampInfoScreen> createState() => _BloodCampInfoScreenState();
}

class _BloodCampInfoScreenState extends State<BloodCampInfoScreen> {
  @override
  void initState() {
    super.initState();
    context.read<BloodCampBloc>().add(const GetBloodCampHistory());
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: BloodCampInfoScreen.tabs.length,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Blood Camps"),
          bottom: const TabBar(
            tabs: BloodCampInfoScreen.tabs,
          ),
        ),
        body: TabBarView(
          children: [
            Center(
              child: BlocBuilder<BloodCampBloc, BloodCampState>(
                builder: (context, state) {
                  if (state.status == BloodCampStatus.loading) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  } else if (state.status == BloodCampStatus.loaded) {
                    return state.upComingCamps.isEmpty
                        ? const Text("No upcoming camps are found")
                        : const Text('This is the  tab',
                            style: TextStyle(fontSize: 36));
                  } else {
                    return const Center(child: Text("Something went wrong."));
                  }
                },
              ),
            ),
            Center(
              child: BlocBuilder<BloodCampBloc, BloodCampState>(
                builder: (context, state) {
                  if (state.status == BloodCampStatus.loading) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  } else if (state.status == BloodCampStatus.loaded) {
                    return state.campHistory.isEmpty
                        ? const Text("No camp history found")
                        : _buildCampHistoryWidget(state.campHistory);
                  } else {
                    return const Center(child: Text("Something went wrong."));
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCampHistoryWidget(List<BloodCampHistoryModel> campHistoryList) {
    return ListView.builder(
      itemCount: campHistoryList.length,
      itemBuilder: (context, index) {
        final item = campHistoryList[index];
        return ListTile(
          title: Text(item.camplocation),
          subtitle: Text(item.camporganizer),
          trailing: Text(item.nepalidate),
        );
      },
    );
  }
}
