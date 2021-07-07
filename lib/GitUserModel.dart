
class GitUserModel {
  final String? login;
  final int? id;
  final String? avatarUrl;

  GitUserModel(
      {required this.login, required this.id, required this.avatarUrl});

  GitUserModel.fromJson(Map<String, dynamic> json)
      : login = json["login"],
      id = json["id"],
      avatarUrl = json["avatar_url"];

  Map<String, dynamic> toJson() => {
    "login": login,
    "id": id,
    "avatar_url": avatarUrl
  };

  GitUserModel from ({object: Map}){
    var map = object;
    return GitUserModel(
        login: map["login"] as String,
        id: map["id"] as int,
        avatarUrl: map["avatar_url"] as String
    );
  }
}
