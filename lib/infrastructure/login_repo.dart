// ignore_for_file: unused_local_variable, avoid_print

import 'dart:convert';

import 'package:dartz/dartz.dart';
import '../domain/core/failures/main_failure.dart';
import '../domain/i_login_repo.dart';
import '../domain/models/login_model.dart';
import 'package:http/http.dart' as http;

class LoginRepo implements ILoginRepo {
  int? firmId;
  int? moduleId;
  String? userId;
  String? password;
  @override
  Future<Either<MainFailure, LoginCredentials>> loginWithIdPassword({
    required String userId,
    required String password,
    required int firmId,
    required int moduleId,
  }) async {
    try {
      final response = await http.get(
        Uri.parse(
            "http://docker.mactech.net.in:6005/Login1?firmId=$firmId&moduleId=$moduleId&userId=$userId&password=$password"),
      );
      print(response.body);

      if (response.statusCode == 200 || response.statusCode == 201) {
        final model = jsonDecode(response.body);
        final loginCredentials = LoginCredentials.fromJson(model);
        print(response.statusCode);
        print(response.body);
        print(loginCredentials);
        return Right(loginCredentials);
      } else {
        return const Left(MainFailure.serverError());
      }
    } catch (e) {
      return const Left(MainFailure.clientFailure());
    }
  }
}
