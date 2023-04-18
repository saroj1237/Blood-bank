import 'package:blood_bank/data/aph_remote_datasource.dart';
import 'package:blood_bank/domain/models/aph/aph_models.dart';
import 'package:blood_bank/presentation/bloc/aph_bloc/a_p_h_bloc.dart';
import 'package:dartz/dartz.dart';

class APHRepository {
  final APHRemoteDataSource remoteDataSource;

  APHRepository({required this.remoteDataSource});
  Future<Either<String, List<AmbulanceModel>>> getAmbulances() async {
    try {
      final ambulances = await remoteDataSource.getAmbulances();
      return Right(ambulances);
    } catch (e) {
      return Left(e.toString());
    }
  }

  Future<Either<String, List<HospitalModel>>> getHospitals() async {
    try {
      final hospitals = await remoteDataSource.getHospitals();
      return Right(hospitals);
    } catch (e) {
      return Left(e.toString());
    }
  }
    Future<Either<String, List<PharmacyModel>>> getPharmacies() async {
    try {
      final pharmacies = await remoteDataSource.getPharmacies();
      return Right(pharmacies);
    } catch (e) {
      return Left(e.toString());
    }
  }
}
