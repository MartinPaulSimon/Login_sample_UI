// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LoginCredentials _$$_LoginCredentialsFromJson(Map<String, dynamic> json) =>
    _$_LoginCredentials(
      json['customerId'] as String,
      json['customerName'] as String,
      json['firmId'] as int,
      json['branchId'] as int,
      json['maritalStatus'] as String,
      json['fatherName'] as String,
      json['phoneNumber'] as String,
      json['pinNo'] as int,
      json['houseName'] as String,
      json['locality'] as String,
      json['postcode'] as String,
      json['userType'] as String,
      json['sessionId'] as String,
    );

Map<String, dynamic> _$$_LoginCredentialsToJson(_$_LoginCredentials instance) =>
    <String, dynamic>{
      'customerId': instance.customerId,
      'customerName': instance.customerName,
      'firmId': instance.firmId,
      'branchId': instance.branchId,
      'maritalStatus': instance.maritalStatus,
      'fatherName': instance.fatherName,
      'phoneNumber': instance.phoneNumber,
      'pinNo': instance.pinNo,
      'houseName': instance.houseName,
      'locality': instance.locality,
      'postcode': instance.postcode,
      'userType': instance.userType,
      'sessionId': instance.sessionId,
    };
