import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:chat_app/core/services/web_socket_services.dart';
import 'package:chat_app/features/chat/data/models/message.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_event.dart';
part 'chat_state.dart';
part 'chat_bloc.freezed.dart';

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  List<Message> chat = [];
  ChatBloc() : super(const ChatState.success([])) {
    WebSocketServices.getInstance("wss://s14781.nyc1.piesocket.com/v3/1?api_key=kLgGoDV7ablppHkpGtqwvb1kGOru8svXMwpu47C3&notify_self=1");
    WebSocketServices.channel.stream.listen(
          (event){
            print(event.runtimeType);
            if(event is String && event.isEmpty)return;
            try{
              add(ChatEvent.addData(Message.fromJson(json.decode(event))));
            }catch(e){
              print("object $e");
            }
      },
      cancelOnError: true,
      onError: (e){
        emit(ChatState.failure(e.toString()));
        WebSocketServices.getInstance("wss://s14781.nyc1.piesocket.com/v3/1?api_key=kLgGoDV7ablppHkpGtqwvb1kGOru8svXMwpu47C3&notify_self=1");
      },
      onDone: (){
        emit(ChatState.failure("Server bilan uzulish yuzaga keldi"));
        WebSocketServices.getInstance("wss://s14781.nyc1.piesocket.com/v3/1?api_key=kLgGoDV7ablppHkpGtqwvb1kGOru8svXMwpu47C3&notify_self=1");
      },
    );
    on<_FetchChat>(_fetchChat);
    on<_AddData>((_AddData event, Emitter<ChatState> emit){
      print("object");
      chat = [event.data,...chat];
      add(ChatEvent.fetchChat());
    });
    on<_SendMessage>((_SendMessage event, Emitter<ChatState> emit){
      WebSocketServices.channel.sink.add(json.encode(event.data.toJson()));
    });
  }

  _fetchChat(_FetchChat event, Emitter<ChatState> emit) {
    print("_fetchChat");
    emit(ChatState.success(chat));
  }
}
