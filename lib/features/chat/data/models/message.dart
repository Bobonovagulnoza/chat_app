class Message {
  final int id;
  final String name;
  final String message;
  final String time;


  Message({required this.name,required this.id, required this.message, required this.time});

  Map<String, dynamic> toJson() => {"name": name, "message": message,"id":id, "time": time};

  factory Message.fromJson(Map<String, dynamic> json) => Message(
    id: json["id"],
        name: json["name"],
        message: json["message"],
        time: json["time"],
      );
}
