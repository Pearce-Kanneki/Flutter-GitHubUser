
import 'package:json_annotation/json_annotation.dart';

part 'GitUserModel.g.dart';

@JsonSerializable()
class GitUserModel {
  String? login;
  int? id;
  String? avatarUrl;

  GitUserModel(
      {required this.login, required this.id, required this.avatarUrl});

  factory GitUserModel.fromJson(Map<String, dynamic> json)
    => _$GitUserModelFromJson(json);

  Map<String, dynamic> toJson() => _$GitUserModelToJson(this);

}
