// To parse this JSON data, do
//
//     final testResponse = testResponseFromJson(jsonString);

import 'dart:convert';

TestResponse testResponseFromJson(String str) => TestResponse.fromJson(json.decode(str));

String testResponseToJson(TestResponse data) => json.encode(data.toJson());

class TestResponse {
  TestResponse({
    this.userId,
    this.id,
    this.title,
    this.completed,
  });

  int userId;
  int id;
  String title;
  bool completed;

  factory TestResponse.fromJson(Map<String, dynamic> json) => TestResponse(
    userId: json["userId"],
    id: json["id"],
    title: json["title"],
    completed: json["completed"],
  );

  Map<String, dynamic> toJson() => {
    "userId": userId,
    "id": id,
    "title": title,
    "completed": completed,
  };
}
