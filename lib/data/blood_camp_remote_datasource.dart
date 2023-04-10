import 'package:blood_bank/domain/models/blood/camp.dart';
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
}
