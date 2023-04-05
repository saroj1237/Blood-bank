import 'dart:io';

import 'package:blood_bank/domain/models/blood/blood_stock.dart';
import 'package:blood_bank/domain/repositories/blood_services_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'blood_services_event.dart';
part 'blood_services_state.dart';
part 'blood_services_bloc.freezed.dart';

class BloodServicesBloc extends Bloc<BloodServicesEvent, BloodServicesState> {
  final BloodServicesRepository bloodServicesRepository;
  BloodServicesBloc({required this.bloodServicesRepository})
      : super(const BloodServicesState(status: BloodServiceStatus.initial)) {
    on<GetBloodStock>(_onGetBloodStock);
    on<RequestBlood>(_onRequestBlood);
  }
  void _onGetBloodStock(
      GetBloodStock event, Emitter<BloodServicesState> emit) async {
    emit(state.copyWith(status: BloodServiceStatus.loading));
    final data = await bloodServicesRepository.getBloodStock();
    emit((state.copyWith(
      status: BloodServiceStatus.loaded,
      bloodStock: data,
    )));
  }

  void _onRequestBlood(
      RequestBlood event, Emitter<BloodServicesState> emit) async {
    emit(state.copyWith(status: BloodServiceStatus.loading));
    final result = await bloodServicesRepository.requestBlood(event.request, event.file);
  }
}
