import 'dart:async';

import 'package:web_socket_channel/web_socket_channel.dart';

class WebSocketServices {
  static late WebSocketChannel channel;
  static void getInstance(String wss) {
    channel = WebSocketChannel.connect(
        Uri.parse(wss),
    );
  }
}