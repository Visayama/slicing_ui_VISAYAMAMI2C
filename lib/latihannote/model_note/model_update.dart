// To parse this JSON data, do
//
//     final modelUpdate = modelUpdateFromJson(jsonString);

import 'dart:convert';

ModelUpdate modelUpdateFromJson(String str) => ModelUpdate.fromJson(json.decode(str));

String modelUpdateToJson(ModelUpdate data) => json.encode(data.toJson());

class ModelUpdate {
  bool isSuccess;
  int value;
  String message;

  ModelUpdate({
    required this.isSuccess,
    required this.value,
    required this.message,
  });

  factory ModelUpdate.fromJson(Map<String, dynamic> json) => ModelUpdate(
    isSuccess: json["is_success"],
    value: json["value"],
    message: json["message"],
  );

  Map<String, dynamic> toJson() => {
    "is_success": isSuccess,
    "value": value,
    "message": message,
  };
}
