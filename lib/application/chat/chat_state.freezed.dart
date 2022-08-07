// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'chat_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChatState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<Chatroom> get chatRooms => throw _privateConstructorUsedError;
  Chatroom? get chatroom => throw _privateConstructorUsedError;
  User? get currentUser => throw _privateConstructorUsedError;
  User? get receiver => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatStateCopyWith<ChatState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatStateCopyWith<$Res> {
  factory $ChatStateCopyWith(ChatState value, $Res Function(ChatState) then) =
      _$ChatStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      List<Chatroom> chatRooms,
      Chatroom? chatroom,
      User? currentUser,
      User? receiver});

  $ChatroomCopyWith<$Res>? get chatroom;
  $UserCopyWith<$Res>? get currentUser;
  $UserCopyWith<$Res>? get receiver;
}

/// @nodoc
class _$ChatStateCopyWithImpl<$Res> implements $ChatStateCopyWith<$Res> {
  _$ChatStateCopyWithImpl(this._value, this._then);

  final ChatState _value;
  // ignore: unused_field
  final $Res Function(ChatState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? chatRooms = freezed,
    Object? chatroom = freezed,
    Object? currentUser = freezed,
    Object? receiver = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      chatRooms: chatRooms == freezed
          ? _value.chatRooms
          : chatRooms // ignore: cast_nullable_to_non_nullable
              as List<Chatroom>,
      chatroom: chatroom == freezed
          ? _value.chatroom
          : chatroom // ignore: cast_nullable_to_non_nullable
              as Chatroom?,
      currentUser: currentUser == freezed
          ? _value.currentUser
          : currentUser // ignore: cast_nullable_to_non_nullable
              as User?,
      receiver: receiver == freezed
          ? _value.receiver
          : receiver // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }

  @override
  $ChatroomCopyWith<$Res>? get chatroom {
    if (_value.chatroom == null) {
      return null;
    }

    return $ChatroomCopyWith<$Res>(_value.chatroom!, (value) {
      return _then(_value.copyWith(chatroom: value));
    });
  }

  @override
  $UserCopyWith<$Res>? get currentUser {
    if (_value.currentUser == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.currentUser!, (value) {
      return _then(_value.copyWith(currentUser: value));
    });
  }

  @override
  $UserCopyWith<$Res>? get receiver {
    if (_value.receiver == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.receiver!, (value) {
      return _then(_value.copyWith(receiver: value));
    });
  }
}

/// @nodoc
abstract class _$$_ChatStateCopyWith<$Res> implements $ChatStateCopyWith<$Res> {
  factory _$$_ChatStateCopyWith(
          _$_ChatState value, $Res Function(_$_ChatState) then) =
      __$$_ChatStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      List<Chatroom> chatRooms,
      Chatroom? chatroom,
      User? currentUser,
      User? receiver});

  @override
  $ChatroomCopyWith<$Res>? get chatroom;
  @override
  $UserCopyWith<$Res>? get currentUser;
  @override
  $UserCopyWith<$Res>? get receiver;
}

/// @nodoc
class __$$_ChatStateCopyWithImpl<$Res> extends _$ChatStateCopyWithImpl<$Res>
    implements _$$_ChatStateCopyWith<$Res> {
  __$$_ChatStateCopyWithImpl(
      _$_ChatState _value, $Res Function(_$_ChatState) _then)
      : super(_value, (v) => _then(v as _$_ChatState));

  @override
  _$_ChatState get _value => super._value as _$_ChatState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? chatRooms = freezed,
    Object? chatroom = freezed,
    Object? currentUser = freezed,
    Object? receiver = freezed,
  }) {
    return _then(_$_ChatState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      chatRooms: chatRooms == freezed
          ? _value._chatRooms
          : chatRooms // ignore: cast_nullable_to_non_nullable
              as List<Chatroom>,
      chatroom: chatroom == freezed
          ? _value.chatroom
          : chatroom // ignore: cast_nullable_to_non_nullable
              as Chatroom?,
      currentUser: currentUser == freezed
          ? _value.currentUser
          : currentUser // ignore: cast_nullable_to_non_nullable
              as User?,
      receiver: receiver == freezed
          ? _value.receiver
          : receiver // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }
}

/// @nodoc

class _$_ChatState implements _ChatState {
  const _$_ChatState(
      {this.isLoading = false,
      final List<Chatroom> chatRooms = const <Chatroom>[],
      this.chatroom,
      this.currentUser,
      this.receiver})
      : _chatRooms = chatRooms;

  @override
  @JsonKey()
  final bool isLoading;
  final List<Chatroom> _chatRooms;
  @override
  @JsonKey()
  List<Chatroom> get chatRooms {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chatRooms);
  }

  @override
  final Chatroom? chatroom;
  @override
  final User? currentUser;
  @override
  final User? receiver;

  @override
  String toString() {
    return 'ChatState(isLoading: $isLoading, chatRooms: $chatRooms, chatroom: $chatroom, currentUser: $currentUser, receiver: $receiver)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChatState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other._chatRooms, _chatRooms) &&
            const DeepCollectionEquality().equals(other.chatroom, chatroom) &&
            const DeepCollectionEquality()
                .equals(other.currentUser, currentUser) &&
            const DeepCollectionEquality().equals(other.receiver, receiver));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(_chatRooms),
      const DeepCollectionEquality().hash(chatroom),
      const DeepCollectionEquality().hash(currentUser),
      const DeepCollectionEquality().hash(receiver));

  @JsonKey(ignore: true)
  @override
  _$$_ChatStateCopyWith<_$_ChatState> get copyWith =>
      __$$_ChatStateCopyWithImpl<_$_ChatState>(this, _$identity);
}

abstract class _ChatState implements ChatState {
  const factory _ChatState(
      {final bool isLoading,
      final List<Chatroom> chatRooms,
      final Chatroom? chatroom,
      final User? currentUser,
      final User? receiver}) = _$_ChatState;

  @override
  bool get isLoading;
  @override
  List<Chatroom> get chatRooms;
  @override
  Chatroom? get chatroom;
  @override
  User? get currentUser;
  @override
  User? get receiver;
  @override
  @JsonKey(ignore: true)
  _$$_ChatStateCopyWith<_$_ChatState> get copyWith =>
      throw _privateConstructorUsedError;
}
