import 'package:dartz/dartz.dart';
import 'package:login_sample/domain/core/failures/main_failure.dart';
import 'package:login_sample/domain/models/login_model.dart';

abstract class ILoginRepo {
  Future<Either<MainFailure, LoginCredentials>> loginWithIdPassword({
    required String userId,
    required String password,
    required int firmId,
    required int moduleId,
  });
}
