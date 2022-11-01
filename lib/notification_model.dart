import 'dart:convert';

class NotificationModel {
  final String pickingNumber;
  NotificationModel({
    required this.pickingNumber,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pickingNumber': pickingNumber,
    };
  }

  factory NotificationModel.fromMap(Map<String, dynamic> map) {
    return NotificationModel(
      pickingNumber: map['pickingNumber'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory NotificationModel.fromJson(String source) =>
      NotificationModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
