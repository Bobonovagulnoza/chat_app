class Message {
  final String name;
  final String message;
  final String time;


  Message({required this.name, required this.message, required this.time});

  Map<String, dynamic> toJson() => {"name": name, "message": message, "time": time};

  factory Message.fromJson(Map<String, dynamic> json) => Message(
        name: json["name"],
        message: json["message"],
        time: json["time"],
      );
}
