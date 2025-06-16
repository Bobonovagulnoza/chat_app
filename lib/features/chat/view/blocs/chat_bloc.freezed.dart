// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChatEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchChat,
    required TResult Function(Message data) addData,
    required TResult Function(Message data) sendMessage,
    required TResult Function(Message data) deleteMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchChat,
    TResult? Function(Message data)? addData,
    TResult? Function(Message data)? sendMessage,
    TResult? Function(Message data)? deleteMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchChat,
    TResult Function(Message data)? addData,
    TResult Function(Message data)? sendMessage,
    TResult Function(Message data)? deleteMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchChat value) fetchChat,
    required TResult Function(_AddData value) addData,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_DeleteMessage value) deleteMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchChat value)? fetchChat,
    TResult? Function(_AddData value)? addData,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_DeleteMessage value)? deleteMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchChat value)? fetchChat,
    TResult Function(_AddData value)? addData,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_DeleteMessage value)? deleteMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatEventCopyWith<$Res> {
  factory $ChatEventCopyWith(ChatEvent value, $Res Function(ChatEvent) then) =
      _$ChatEventCopyWithImpl<$Res, ChatEvent>;
}

/// @nodoc
class _$ChatEventCopyWithImpl<$Res, $Val extends ChatEvent>
    implements $ChatEventCopyWith<$Res> {
  _$ChatEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FetchChatImplCopyWith<$Res> {
  factory _$$FetchChatImplCopyWith(
          _$FetchChatImpl value, $Res Function(_$FetchChatImpl) then) =
      __$$FetchChatImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchChatImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$FetchChatImpl>
    implements _$$FetchChatImplCopyWith<$Res> {
  __$$FetchChatImplCopyWithImpl(
      _$FetchChatImpl _value, $Res Function(_$FetchChatImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchChatImpl implements _FetchChat {
  const _$FetchChatImpl();

  @override
  String toString() {
    return 'ChatEvent.fetchChat()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchChatImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchChat,
    required TResult Function(Message data) addData,
    required TResult Function(Message data) sendMessage,
    required TResult Function(Message data) deleteMessage,
  }) {
    return fetchChat();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchChat,
    TResult? Function(Message data)? addData,
    TResult? Function(Message data)? sendMessage,
    TResult? Function(Message data)? deleteMessage,
  }) {
    return fetchChat?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchChat,
    TResult Function(Message data)? addData,
    TResult Function(Message data)? sendMessage,
    TResult Function(Message data)? deleteMessage,
    required TResult orElse(),
  }) {
    if (fetchChat != null) {
      return fetchChat();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchChat value) fetchChat,
    required TResult Function(_AddData value) addData,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_DeleteMessage value) deleteMessage,
  }) {
    return fetchChat(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchChat value)? fetchChat,
    TResult? Function(_AddData value)? addData,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_DeleteMessage value)? deleteMessage,
  }) {
    return fetchChat?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchChat value)? fetchChat,
    TResult Function(_AddData value)? addData,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_DeleteMessage value)? deleteMessage,
    required TResult orElse(),
  }) {
    if (fetchChat != null) {
      return fetchChat(this);
    }
    return orElse();
  }
}

abstract class _FetchChat implements ChatEvent {
  const factory _FetchChat() = _$FetchChatImpl;
}

/// @nodoc
abstract class _$$AddDataImplCopyWith<$Res> {
  factory _$$AddDataImplCopyWith(
          _$AddDataImpl value, $Res Function(_$AddDataImpl) then) =
      __$$AddDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Message data});
}

/// @nodoc
class __$$AddDataImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$AddDataImpl>
    implements _$$AddDataImplCopyWith<$Res> {
  __$$AddDataImplCopyWithImpl(
      _$AddDataImpl _value, $Res Function(_$AddDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$AddDataImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Message,
    ));
  }
}

/// @nodoc

class _$AddDataImpl implements _AddData {
  const _$AddDataImpl(this.data);

  @override
  final Message data;

  @override
  String toString() {
    return 'ChatEvent.addData(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddDataImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddDataImplCopyWith<_$AddDataImpl> get copyWith =>
      __$$AddDataImplCopyWithImpl<_$AddDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchChat,
    required TResult Function(Message data) addData,
    required TResult Function(Message data) sendMessage,
    required TResult Function(Message data) deleteMessage,
  }) {
    return addData(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchChat,
    TResult? Function(Message data)? addData,
    TResult? Function(Message data)? sendMessage,
    TResult? Function(Message data)? deleteMessage,
  }) {
    return addData?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchChat,
    TResult Function(Message data)? addData,
    TResult Function(Message data)? sendMessage,
    TResult Function(Message data)? deleteMessage,
    required TResult orElse(),
  }) {
    if (addData != null) {
      return addData(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchChat value) fetchChat,
    required TResult Function(_AddData value) addData,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_DeleteMessage value) deleteMessage,
  }) {
    return addData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchChat value)? fetchChat,
    TResult? Function(_AddData value)? addData,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_DeleteMessage value)? deleteMessage,
  }) {
    return addData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchChat value)? fetchChat,
    TResult Function(_AddData value)? addData,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_DeleteMessage value)? deleteMessage,
    required TResult orElse(),
  }) {
    if (addData != null) {
      return addData(this);
    }
    return orElse();
  }
}

abstract class _AddData implements ChatEvent {
  const factory _AddData(final Message data) = _$AddDataImpl;

  Message get data;

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddDataImplCopyWith<_$AddDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SendMessageImplCopyWith<$Res> {
  factory _$$SendMessageImplCopyWith(
          _$SendMessageImpl value, $Res Function(_$SendMessageImpl) then) =
      __$$SendMessageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Message data});
}

/// @nodoc
class __$$SendMessageImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$SendMessageImpl>
    implements _$$SendMessageImplCopyWith<$Res> {
  __$$SendMessageImplCopyWithImpl(
      _$SendMessageImpl _value, $Res Function(_$SendMessageImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$SendMessageImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Message,
    ));
  }
}

/// @nodoc

class _$SendMessageImpl implements _SendMessage {
  const _$SendMessageImpl(this.data);

  @override
  final Message data;

  @override
  String toString() {
    return 'ChatEvent.sendMessage(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendMessageImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SendMessageImplCopyWith<_$SendMessageImpl> get copyWith =>
      __$$SendMessageImplCopyWithImpl<_$SendMessageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchChat,
    required TResult Function(Message data) addData,
    required TResult Function(Message data) sendMessage,
    required TResult Function(Message data) deleteMessage,
  }) {
    return sendMessage(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchChat,
    TResult? Function(Message data)? addData,
    TResult? Function(Message data)? sendMessage,
    TResult? Function(Message data)? deleteMessage,
  }) {
    return sendMessage?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchChat,
    TResult Function(Message data)? addData,
    TResult Function(Message data)? sendMessage,
    TResult Function(Message data)? deleteMessage,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchChat value) fetchChat,
    required TResult Function(_AddData value) addData,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_DeleteMessage value) deleteMessage,
  }) {
    return sendMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchChat value)? fetchChat,
    TResult? Function(_AddData value)? addData,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_DeleteMessage value)? deleteMessage,
  }) {
    return sendMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchChat value)? fetchChat,
    TResult Function(_AddData value)? addData,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_DeleteMessage value)? deleteMessage,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(this);
    }
    return orElse();
  }
}

abstract class _SendMessage implements ChatEvent {
  const factory _SendMessage(final Message data) = _$SendMessageImpl;

  Message get data;

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SendMessageImplCopyWith<_$SendMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteMessageImplCopyWith<$Res> {
  factory _$$DeleteMessageImplCopyWith(
          _$DeleteMessageImpl value, $Res Function(_$DeleteMessageImpl) then) =
      __$$DeleteMessageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Message data});
}

/// @nodoc
class __$$DeleteMessageImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$DeleteMessageImpl>
    implements _$$DeleteMessageImplCopyWith<$Res> {
  __$$DeleteMessageImplCopyWithImpl(
      _$DeleteMessageImpl _value, $Res Function(_$DeleteMessageImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$DeleteMessageImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Message,
    ));
  }
}

/// @nodoc

class _$DeleteMessageImpl implements _DeleteMessage {
  const _$DeleteMessageImpl(this.data);

  @override
  final Message data;

  @override
  String toString() {
    return 'ChatEvent.deleteMessage(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteMessageImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteMessageImplCopyWith<_$DeleteMessageImpl> get copyWith =>
      __$$DeleteMessageImplCopyWithImpl<_$DeleteMessageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchChat,
    required TResult Function(Message data) addData,
    required TResult Function(Message data) sendMessage,
    required TResult Function(Message data) deleteMessage,
  }) {
    return deleteMessage(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchChat,
    TResult? Function(Message data)? addData,
    TResult? Function(Message data)? sendMessage,
    TResult? Function(Message data)? deleteMessage,
  }) {
    return deleteMessage?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchChat,
    TResult Function(Message data)? addData,
    TResult Function(Message data)? sendMessage,
    TResult Function(Message data)? deleteMessage,
    required TResult orElse(),
  }) {
    if (deleteMessage != null) {
      return deleteMessage(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchChat value) fetchChat,
    required TResult Function(_AddData value) addData,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_DeleteMessage value) deleteMessage,
  }) {
    return deleteMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchChat value)? fetchChat,
    TResult? Function(_AddData value)? addData,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_DeleteMessage value)? deleteMessage,
  }) {
    return deleteMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchChat value)? fetchChat,
    TResult Function(_AddData value)? addData,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_DeleteMessage value)? deleteMessage,
    required TResult orElse(),
  }) {
    if (deleteMessage != null) {
      return deleteMessage(this);
    }
    return orElse();
  }
}

abstract class _DeleteMessage implements ChatEvent {
  const factory _DeleteMessage(final Message data) = _$DeleteMessageImpl;

  Message get data;

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteMessageImplCopyWith<_$DeleteMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChatState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Message> chat) success,
    required TResult Function(String error) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Message> chat)? success,
    TResult? Function(String error)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Message> chat)? success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatStateCopyWith<$Res> {
  factory $ChatStateCopyWith(ChatState value, $Res Function(ChatState) then) =
      _$ChatStateCopyWithImpl<$Res, ChatState>;
}

/// @nodoc
class _$ChatStateCopyWithImpl<$Res, $Val extends ChatState>
    implements $ChatStateCopyWith<$Res> {
  _$ChatStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'ChatState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Message> chat) success,
    required TResult Function(String error) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Message> chat)? success,
    TResult? Function(String error)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Message> chat)? success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements ChatState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Message> chat});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chat = null,
  }) {
    return _then(_$SuccessImpl(
      null == chat
          ? _value._chat
          : chat // ignore: cast_nullable_to_non_nullable
              as List<Message>,
    ));
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl(final List<Message> chat) : _chat = chat;

  final List<Message> _chat;
  @override
  List<Message> get chat {
    if (_chat is EqualUnmodifiableListView) return _chat;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chat);
  }

  @override
  String toString() {
    return 'ChatState.success(chat: $chat)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            const DeepCollectionEquality().equals(other._chat, _chat));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_chat));

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Message> chat) success,
    required TResult Function(String error) failure,
  }) {
    return success(chat);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Message> chat)? success,
    TResult? Function(String error)? failure,
  }) {
    return success?.call(chat);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Message> chat)? success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(chat);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements ChatState {
  const factory _Success(final List<Message> chat) = _$SuccessImpl;

  List<Message> get chat;

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureImplCopyWith<$Res> {
  factory _$$FailureImplCopyWith(
          _$FailureImpl value, $Res Function(_$FailureImpl) then) =
      __$$FailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$FailureImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl _value, $Res Function(_$FailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$FailureImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailureImpl implements _Failure {
  const _$FailureImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'ChatState.failure(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      __$$FailureImplCopyWithImpl<_$FailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Message> chat) success,
    required TResult Function(String error) failure,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Message> chat)? success,
    TResult? Function(String error)? failure,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Message> chat)? success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements ChatState {
  const factory _Failure(final String error) = _$FailureImpl;

  String get error;

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
