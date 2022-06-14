import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_model.freezed.dart';
part 'login_model.g.dart';

@freezed
class LoginCredentials with _$LoginCredentials {
  const factory LoginCredentials(
    String customerId,
    String customerName,
    int firmId,
    int branchId,
    String maritalStatus,
    String fatherName,
    String phoneNumber,
    int pinNo,
    String houseName,
    String locality,
    String postcode,
    String userType,
    String sessionId,
  ) = _LoginCredentials;

  factory LoginCredentials.fromJson(Map<String, dynamic> json) =>
      _$LoginCredentialsFromJson(json);
}
