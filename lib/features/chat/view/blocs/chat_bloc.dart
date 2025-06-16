import 'dart:convert';
import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:chat_app/core/services/web_socket_services.dart';
import 'package:chat_app/features/chat/data/models/message.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_event.dart';
part 'chat_state.dart';
part 'chat_bloc.freezed.dart';

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  List<Message> chat = [];
  late Box<Message> messageBox;

  ChatBloc() : super(const ChatState.loading()) {
    messageBox = Hive.box<Message>('messages');
    chat = messageBox.values.toList().reversed.toList();

    WebSocketServices.getInstance("wss://s14781.nyc1.piesocket.com/v3/1?api_key=kLgGoDV7ablppHkpGtqwvb1kGOru8svXMwpu47C3&notify_self=1");
    WebSocketServices.channel.stream.listen(
          (event) {
        if (event is String && event.isNotEmpty) {
          try {
            final msg = Message.fromJson(json.decode(event));
            add(ChatEvent.addData(msg));
          } catch (e) {
            emit(ChatState.failure("JSON xatolik: $e"));
          }
        }
      },
      cancelOnError: true,
      onError: (e) => emit(ChatState.failure(e.toString())),
      onDone: () => emit(const ChatState.failure("Aloqa uzildi")),
    );

    on<_FetchChat>((event, emit) {
      emit(ChatState.success(List.from(chat)));
    });

    on<_AddData>((event, emit) {
      chat = [event.data, ...chat];
      messageBox.add(event.data);
      add(const ChatEvent.fetchChat());
    });

    on<_SendMessage>((event, emit) {
      WebSocketServices.channel.sink.add(json.encode(event.data.toJson()));
    });

    on<_DeleteMessage>((event, emit) {
      chat.removeWhere((m) => m.id == event.data.id);
      final key = messageBox.keys.firstWhere(
              (k) => messageBox.get(k)?.id == event.data.id,
          orElse: () => null);
      if (key != null) messageBox.delete(key);
      add(const ChatEvent.fetchChat());
    });
  }
}
