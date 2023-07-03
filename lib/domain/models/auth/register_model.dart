import 'package:freezed_annotation/freezed_annotation.dart';
part 'register_model.freezed.dart';
part 'register_model.g.dart';

@freezed
class DonorRegisterRequest with _$DonorRegisterRequest {
  const factory DonorRegisterRequest({
    required String name,
    required String phone,
    required String email,
    required String bloodGroup,
    required int age,
    required String gender,
    required String address,
    String? lastDonatedDate,
  }) = _DonorRegisterRequest;
  factory DonorRegisterRequest.fromJson(Map<String, dynamic> json) =>
      _$DonorRegisterRequestFromJson(json);
}
