import 'package:freezed_annotation/freezed_annotation.dart';
part 'camp.freezed.dart';
part 'camp.g.dart';

@freezed
class BookCampRequest with _$BookCampRequest {
  const factory BookCampRequest({
    required String name,
    required String organizer_name,
    required String venue,
    required String date_time,
    required String donors_no,
    required String phone_number,
    required String email,
    required String message,
  }) = _BookCampRequest;
  factory BookCampRequest.fromJson(Map<String, dynamic> json) =>
      _$BookCampRequestFromJson(json);
}
