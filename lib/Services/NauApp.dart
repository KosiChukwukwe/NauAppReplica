// To parse this JSON data, do
//
//     final nauApp = nauAppFromJson(jsonString);

import 'dart:convert';

NauApp nauAppFromJson(String str) => NauApp.fromJson(json.decode(str));

String nauAppToJson(NauApp data) => json.encode(data.toJson());

class NauApp {
  NauApp({
    this.success,
    this.result,
    this.token,
  });

  bool success;
  Result result;
  String token;

  factory NauApp.fromJson(Map<String, dynamic> json) => NauApp(
    success: json["success"],
    result: Result.fromJson(json["result"]),
    token: json["token"],
  );

  Map<String, dynamic> toJson() => {
    "success": success,
    "result": result.toJson(),
    "token": token,
  };
}

class Result {
  Result({
    this.id,
    this.username,
    this.password,
    this.createdAt,
    this.updatedAt,
    this.v,
  });

  String id;
  String username;
  String password;
  DateTime createdAt;
  DateTime updatedAt;
  int v;

  factory Result.fromJson(Map<String, dynamic> json) => Result(
    id: json["_id"],
    username: json["username"],
    password: json["password"],
    createdAt: DateTime.parse(json["createdAt"]),
    updatedAt: DateTime.parse(json["updatedAt"]),
    v: json["__v"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "username": username,
    "password": password,
    "createdAt": createdAt.toIso8601String(),
    "updatedAt": updatedAt.toIso8601String(),
    "__v": v,
  };
}
