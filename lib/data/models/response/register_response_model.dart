import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class RegisterResponseModel {
  String? email;
  String? password;
  String? name;
  String? avatar;
  String? role;
  int? id;
  DateTime? creationAt;
  DateTime? updatedAt;

  RegisterResponseModel({
    this.email,
    this.password,
    this.name,
    this.avatar,
    this.role,
    this.id,
    this.creationAt,
    this.updatedAt,
  });

  Map<String, dynamic> toMap() => {
    "email": email,
    "password": password,
    "name": name,
    "avatar": avatar,
    "role": role,
    "id": id,
    "creationAt": creationAt?.toIso8601String(),
    "updatedAt": updatedAt?.toIso8601String(),
  };

  factory RegisterResponseModel.fromMap(Map<String, dynamic> json) =>
      RegisterResponseModel(
        email: json["email"],
        password: json["password"],
        name: json["name"],
        avatar: json["avatar"],
        role: json["role"],
        id: json["id"],
        creationAt: json["creationAt"] == null
            ? null
            : DateTime.parse(json["creationAt"]),
        updatedAt: json["updatedAt"] == null
            ? null
            : DateTime.parse(json["updatedAt"]),
      );

  factory RegisterResponseModel.fromJson(String str) => RegisterResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  @override
  String toString() {
    return 'RegisterResponseModel(email: $email, password: $password, name: $name, avatar: $avatar, role: $role, id: $id, creationAt: $creationAt, updatedAt: $updatedAt)';
  }
}