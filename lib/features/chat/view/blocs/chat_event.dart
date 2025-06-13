part of 'chat_bloc.dart';

@freezed
class ChatEvent with _$ChatEvent {
  const factory ChatEvent.fetchChat() = _FetchChat;
  const factory ChatEvent.addData(Message data) = _AddData;
  const factory ChatEvent.sendMessage(Message data) = _SendMessage;
}
