import 'package:blood_bank/domain/repositories/blood_camp_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:blood_bank/domain/models/blood/camp.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'blood_camp_event.dart';
part 'blood_camp_state.dart';
part 'blood_camp_bloc.freezed.dart';

class BloodCampBloc extends Bloc<BloodCampEvent, BloodCampState> {
  final BloodCampRepository repository;
  BloodCampBloc({required this.repository})
      : super(const BloodCampState(status: BloodCampStatus.initial)) {
    on<BookCamp>(
      (event, emit) async {
        emit(state.copyWith(status: BloodCampStatus.loading));

        final failureOrSuccess = await repository.bookCamp(event.request);
        failureOrSuccess.fold((failure) {
          emit(state.copyWith(
            status: BloodCampStatus.failure,
            errorMsg: failure,
          ));
        }, (success) {
          emit(state.copyWith(
            status: BloodCampStatus.loaded,
          ));
        });
      },
    );
  }
}
