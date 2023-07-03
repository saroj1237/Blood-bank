import 'package:blood_bank/domain/models/blood/camp.dart';
import 'package:blood_bank/domain/models/blood/camp/camp_history_model.dart';
import 'package:dio/dio.dart';

class BloodCampRemoteDataSource {
  final Dio _dio;
  BloodCampRemoteDataSource({required Dio dio}) : _dio = dio;
  Future<bool> bookCamp(BookCampRequest request) async {
    try {
      final response = await _dio.post(
        'https://tulionsbloodbank.org/api/book/camp/save',
        data: request.toJson(),
      );
      print(response);
      return true;
    } catch (e) {
      rethrow;
    }
  }

  Future<List<BloodCampHistoryModel>> getBloodCampHistory() async {
    try {
      final initialResponse = await _dio
          .get('https://halfdigitsdev.com/Mobile/GetPastCampsTotalCount');
      print(initialResponse);
      final totalCount = initialResponse.data['data']['totalpastcamps'];
      if (totalCount <= 0) return [];

      final response = await _dio
          .post('https://halfdigitsdev.com/Mobile/GetPastCamps', data: {
        'fromvalue': 1,
        'tovalue': totalCount,
      });
      List<BloodCampHistoryModel> historyList =
          List<BloodCampHistoryModel>.from(
              (response.data['data'] as Iterable).map(
        (e) => BloodCampHistoryModel.fromJson(e),
      ));
      return historyList;
    } catch (e) {
      rethrow;
    }
  }

  Future<List<BloodBankModel>> getBloodBanks() async {
    try {
      final response = await _dio.get(
        'https://tulionsbloodbank.org/api/bloodbanks',
      );
      print(response);
      List<BloodBankModel> bloodBanks = List<BloodBankModel>.from(
          (response.data['bloodbanks'] as Iterable)
              .map((e) => BloodBankModel.fromJson(e)));
      return bloodBanks;
    } catch (e) {
      rethrow;
    }
  }
}
