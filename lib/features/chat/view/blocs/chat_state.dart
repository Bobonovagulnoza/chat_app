part of 'chat_bloc.dart';

@freezed
class ChatState with _$ChatState {
  const factory ChatState.loading() = _Loading;
  const factory ChatState.success(List<Message> chat) = _Success;
  const factory ChatState.failure(String error) = _Failure;
}
