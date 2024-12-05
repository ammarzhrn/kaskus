import 'package:meta/meta.dart';
import 'dart:convert';

class AuthResponseModel {
  final String accessToken;
  final User user;

  AuthResponseModel({
    required this.accessToken,
    required this.user,
  });

  factory AuthResponseModel.fromJson(String str) => AuthResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory AuthResponseModel.fromMap(Map<String, dynamic> json) => AuthResponseModel(
    accessToken: json["access_token"] ?? '',
    user: User.fromMap(json["user"] ?? {}),
  );

  Map<String, dynamic> toMap() => {
    "access_token": accessToken,
    "user": user.toMap(),
  };
}

class User {
  final int id;
  final String name;
  final String email;
  final String phone;
  final DateTime? emailVerifiedAt;
  final String role;
  final DateTime createdAt;
  final DateTime updatedAt;

  User({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
    this.emailVerifiedAt,
    required this.role,
    required this.createdAt,
    required this.updatedAt,
  });

  factory User.fromJson(String str) => User.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory User.fromMap(Map<String, dynamic> json) => User(
    id: json["id"] ?? 0,
    name: json["name"] ?? '',
    email: json["email"] ?? '',
    phone: json["phone"] ?? '',
    emailVerifiedAt: json["email_verified_at"] != null
        ? DateTime.tryParse(json["email_verified_at"])
        : null,
    role: json["role"] ?? '',
    createdAt: DateTime.parse(json["created_at"] ?? DateTime.now().toIso8601String()),
    updatedAt: DateTime.parse(json["updated_at"] ?? DateTime.now().toIso8601String()),
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "name": name,
    "email": email,
    "phone": phone,
    "email_verified_at": emailVerifiedAt?.toIso8601String(),
    "role": role,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
  };
}
