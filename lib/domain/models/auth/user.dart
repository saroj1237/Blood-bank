// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const factory User({
    @JsonKey(name: "donorcardid") required int donorCardId,
    required String name,
    @JsonKey(name: 'dobndate') required String dateOfBirth,
    @JsonKey(name: "dobnepalidate") required String nepaliDateOfBirth,
    required String sex,
    required String bloodgroup,
    required String mobile,
    required String address,
    required String email,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

@freezed
class OrganizationUserModel with _$OrganizationUserModel {
  const factory OrganizationUserModel({
    @JsonKey(name: "user_id") required String userId,
    @JsonKey(name: "user_name") required String username,
    @JsonKey(name: 'fullname') required String name,
    @JsonKey(name: "phonemobile") required String phone,
    @JsonKey(name: "panemail") required String email,
    required String authtoken,
    required String address,
  }) = _OrganizationUserModel;

  factory OrganizationUserModel.fromJson(Map<String, dynamic> json) =>
      _$OrganizationUserModelFromJson(json);
}
