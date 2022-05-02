// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'GitUserModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GitUserModel _$GitUserModelFromJson(Map<String, dynamic> json) => GitUserModel(
      login: json['login'] as String?,
      id: json['id'] as int?,
      avatarUrl: json['avatarUrl'] as String?,
    );

Map<String, dynamic> _$GitUserModelToJson(GitUserModel instance) =>
    <String, dynamic>{
      'login': instance.login,
      'id': instance.id,
      'avatarUrl': instance.avatarUrl,
    };
