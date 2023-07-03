import 'dart:io';

import 'package:blood_bank/data/blood_service_remote_datasource.dart';
import 'package:blood_bank/domain/models/blood/blood_stock.dart';
import 'package:dartz/dartz.dart';

class BloodServicesRepository {
  final BloodServiceRemoteDataSource remoteDataSource;

  BloodServicesRepository({required this.remoteDataSource});

  Future<Either<String, Map<String, dynamic>>> getBloodStock() async {
    try {
      return  Right(await remoteDataSource.getBloodStock());
    } catch (e) {
      return Left(e.toString());
    }
  }

  Future<bool> requestBlood(RequestBloodReq request, File file) async {
    try {
      return await remoteDataSource.requestBlood(request, file);
    } catch (e) {
      rethrow;
    }
  }

  Future<bool> donateBlood(
      String name, String phone, String dob, String hospitalName) async {
    try {
      return await remoteDataSource.donateBlood(name, phone, dob, hospitalName);
    } catch (e) {
      rethrow;
    }
  }
}
