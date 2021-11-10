import 'dart:convert';

class ResponseEntity {
  String body;
  String statusCode;
  int statusCodeValue;

  ResponseEntity({this.body, this.statusCode, this.statusCodeValue});

  Map<String, dynamic> toMap() {
    return {
      'body': body,
      'statusCode' : statusCode,
      'statusCodeValue' : statusCodeValue,
    };
  }

  factory ResponseEntity.fromMap(Map<String, dynamic> map) {
    return ResponseEntity(
      body: map['body'] ?? '',
      statusCode: map['statusCode'] ?? '',
      statusCodeValue: map['statusCodeValue'] ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory ResponseEntity.fromJson(String source) => ResponseEntity.fromMap(json.decode(source));
}



