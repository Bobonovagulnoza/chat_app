import 'package:hive/hive.dart';

@HiveType(typeId: 0)
class Message {
  @HiveField(0)
  final String id;

  @HiveField(1)
  final String name;

  @HiveField(2)
  final String message;

  Message({
    required this.id,
    required this.name,
    required this.message,
  });

  factory Message.fromJson(Map<String, dynamic> json) {
    return Message(
      id: json['id'],
      name: json['name'],
      message: json['message'],
    );
  }

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'message': message,
  };
}
