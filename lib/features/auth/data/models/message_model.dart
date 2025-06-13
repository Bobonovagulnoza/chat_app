import 'package:hive/hive.dart';

part 'message_model.g.dart';

@HiveType(typeId: 0)
class MessageModel extends HiveObject {
  @HiveField(0)
  final String id;

  @HiveField(1)
  final String sender;

  @HiveField(2)
  final String text;

  @HiveField(3)
  final DateTime timestamp;

  MessageModel({
    required this.id,
    required this.sender,
    required this.text,
    required this.timestamp,
  });
}
