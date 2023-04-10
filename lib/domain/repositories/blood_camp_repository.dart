import 'package:blood_bank/data/blood_camp_remote_datasource.dart';
import 'package:blood_bank/domain/models/blood/camp.dart';
import 'package:dartz/dartz.dart';

class BloodCampRepository {
  final BloodCampRemoteDataSource remoteDataSource;
  BloodCampRepository({required this.remoteDataSource});
  Future<Either<String, bool>> bookCamp(BookCampRequest request) async {
    try {
      final success = await remoteDataSource.bookCamp(request);
      return Right(success);
    } catch (e) {
      return Left(e.toString());
    }
  }
}
