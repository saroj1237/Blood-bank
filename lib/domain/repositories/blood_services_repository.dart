import 'dart:io';

import 'package:blood_bank/data/blood_service_remote_datasource.dart';
import 'package:blood_bank/domain/models/blood/blood_stock.dart';

class BloodServicesRepository {
  final BloodServiceRemoteDataSource remoteDataSource;

  BloodServicesRepository({required this.remoteDataSource});

  Future<Map<String, dynamic>> getBloodStock() async {
    try {
      return await remoteDataSource.getBloodStock();
    } catch (e) {
      rethrow;
    }
  }

  Future<bool> requestBlood(RequestBloodReq request, File file) async {
    try {
      return await remoteDataSource.requestBlood(request, file);
    } catch (e) {
      rethrow;
    }
  }
}
