import 'package:blood_bank/domain/models/aph/aph_models.dart';
import 'package:dio/dio.dart';

//Note: APH refers Ambulance, Pharmacy, Hospital :)

class APHRemoteDataSource {
  final Dio _dio;
  APHRemoteDataSource({required Dio dio}) : _dio = dio;

  Future<List<AmbulanceModel>> getAmbulances() async {
    try {
      final response =
          await _dio.get("https://tulionsbloodbank.org/api/ambulances");
      print(response);
      List<AmbulanceModel> ambulances = List<AmbulanceModel>.from(
          (response.data['ambulances'] as Iterable)
              .map((e) => AmbulanceModel.fromJson(e)));
      return ambulances;
    } catch (e) {
      rethrow;
    }
  }

  Future<List<HospitalModel>> getHospitals() async {
    try {
      final response =
          await _dio.get("https://tulionsbloodbank.org/api/hospitals");
      print(response);
      List<HospitalModel> hospitals = List<HospitalModel>.from(
          (response.data['hospitals'] as Iterable)
              .map((e) => HospitalModel.fromJson(e)));
      return hospitals;
    } catch (e) {
      rethrow;
    }
  }

  Future<List<PharmacyModel>> getPharmacies() async {
    try {
      final response =
          await _dio.get("https://tulionsbloodbank.org/api/pharmacy");
      print(response);
      List<PharmacyModel> pharmacies = List<PharmacyModel>.from(
          (response.data['pharmacy'] as Iterable)
              .map((e) => PharmacyModel.fromJson(e)));
      return pharmacies;
    } catch (e) {
      rethrow;
    }
  }
}
