import 'package:blood_bank/domain/models/aph/aph_models.dart';
import 'package:blood_bank/domain/repositories/aph_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'a_p_h_event.dart';
part 'a_p_h_state.dart';
part 'a_p_h_bloc.freezed.dart';

class APHBloc extends Bloc<APHEvent, APHState> {
  final APHRepository repository;
  APHBloc({required this.repository})
      : super(const APHState(
          status: APHStatus.initial,
        )) {
    on<GetAmbulances>((event, emit) async {
      emit(state.copyWith(status: APHStatus.loading));
      final failureOrSuccess = await repository.getAmbulances();
      failureOrSuccess.fold((failure) {
        emit(state.copyWith(
          status: APHStatus.error,
          errorMsg: failure,
        ));
      }, (ambulances) {
        emit(
          state.copyWith(status: APHStatus.success, ambulances: ambulances),
        );
      });
    });

    on<GetPharmacies>((event, emit) async {
      emit(state.copyWith(status: APHStatus.loading));
      final failureOrSuccess = await repository.getPharmacies();
      failureOrSuccess.fold((failure) {
        emit(state.copyWith(
          status: APHStatus.error,
          errorMsg: failure,
        ));
      }, (pharmacies) {
        emit(
          state.copyWith(status: APHStatus.success, pharmacies: pharmacies),
        );
      });
    });
    on<GetHospitals>((event, emit) async {
      emit(state.copyWith(status: APHStatus.loading));
      final failureOrSuccess = await repository.getHospitals();
      failureOrSuccess.fold((failure) {
        emit(state.copyWith(
          status: APHStatus.error,
          errorMsg: failure,
        ));
      }, (hospitals) {
        emit(
          state.copyWith(status: APHStatus.success, hospitals: hospitals),
        );
      });
    });
  }
}
