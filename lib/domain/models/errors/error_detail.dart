import 'dart:convert';

class ErrorDetail {
  int statusCode;
  int errorCode;
  String message;
  String? systemMessage = '';

  ErrorDetail({
    required this.statusCode,
    required this.errorCode,
    required this.message,
    this.systemMessage,
  });

  ErrorDetail copyWith({
    int? statusCode,
    int? errorCode,
    String? message,
    String? systemMessage,
  }) {
    return ErrorDetail(
      statusCode: statusCode ?? this.statusCode,
      errorCode: errorCode ?? this.errorCode,
      message: message ?? this.message,
      systemMessage: systemMessage ?? this.systemMessage,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'statusCode': statusCode,
      'errorCode': errorCode,
      'message': message,
      'systemMessage': systemMessage,
    };
  }

  factory ErrorDetail.fromMap(Map<String, dynamic> map) {
    return ErrorDetail(
      statusCode: map['statusCode'],
      errorCode: map['errorCode'],
      message: map['message'],
      systemMessage: map['systemMessage'],
    );
  }

  String toJson() => json.encode(toMap());

  factory ErrorDetail.fromJson(String source) =>
      ErrorDetail.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ErrorDetail(statusCode: $statusCode, errorCode: $errorCode, message: $message, systemMessage: $systemMessage)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ErrorDetail &&
        other.statusCode == statusCode &&
        other.errorCode == errorCode &&
        other.message == message &&
        other.systemMessage == systemMessage;
  }

  @override
  int get hashCode {
    return statusCode.hashCode ^
        errorCode.hashCode ^
        message.hashCode ^
        systemMessage.hashCode;
  }
}
