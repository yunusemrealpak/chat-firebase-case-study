// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'chat_room.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Chatroom _$ChatroomFromJson(Map<String, dynamic> json) {
  return _Chatroom.fromJson(json);
}

/// @nodoc
mixin _$Chatroom {
  String? get id => throw _privateConstructorUsedError;
  String? get roomName => throw _privateConstructorUsedError;
  String? get receiverId => throw _privateConstructorUsedError;
  @JsonKey(name: 'createdDate', fromJson: _sendAtFromJson)
  DateTime? get createdDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'updatedDate', fromJson: _sendAtFromJson)
  DateTime? get updatedDate => throw _privateConstructorUsedError;
  int get unreadMessages => throw _privateConstructorUsedError;
  Message? get lastMessage => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  List<Message> get messages => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  List<User> get users => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatroomCopyWith<Chatroom> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatroomCopyWith<$Res> {
  factory $ChatroomCopyWith(Chatroom value, $Res Function(Chatroom) then) =
      _$ChatroomCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String? roomName,
      String? receiverId,
      @JsonKey(name: 'createdDate', fromJson: _sendAtFromJson)
          DateTime? createdDate,
      @JsonKey(name: 'updatedDate', fromJson: _sendAtFromJson)
          DateTime? updatedDate,
      int unreadMessages,
      Message? lastMessage,
      @JsonKey(ignore: true)
          List<Message> messages,
      @JsonKey(ignore: true)
          List<User> users});

  $MessageCopyWith<$Res>? get lastMessage;
}

/// @nodoc
class _$ChatroomCopyWithImpl<$Res> implements $ChatroomCopyWith<$Res> {
  _$ChatroomCopyWithImpl(this._value, this._then);

  final Chatroom _value;
  // ignore: unused_field
  final $Res Function(Chatroom) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? roomName = freezed,
    Object? receiverId = freezed,
    Object? createdDate = freezed,
    Object? updatedDate = freezed,
    Object? unreadMessages = freezed,
    Object? lastMessage = freezed,
    Object? messages = freezed,
    Object? users = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      roomName: roomName == freezed
          ? _value.roomName
          : roomName // ignore: cast_nullable_to_non_nullable
              as String?,
      receiverId: receiverId == freezed
          ? _value.receiverId
          : receiverId // ignore: cast_nullable_to_non_nullable
              as String?,
      createdDate: createdDate == freezed
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedDate: updatedDate == freezed
          ? _value.updatedDate
          : updatedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      unreadMessages: unreadMessages == freezed
          ? _value.unreadMessages
          : unreadMessages // ignore: cast_nullable_to_non_nullable
              as int,
      lastMessage: lastMessage == freezed
          ? _value.lastMessage
          : lastMessage // ignore: cast_nullable_to_non_nullable
              as Message?,
      messages: messages == freezed
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<Message>,
      users: users == freezed
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>,
    ));
  }

  @override
  $MessageCopyWith<$Res>? get lastMessage {
    if (_value.lastMessage == null) {
      return null;
    }

    return $MessageCopyWith<$Res>(_value.lastMessage!, (value) {
      return _then(_value.copyWith(lastMessage: value));
    });
  }
}

/// @nodoc
abstract class _$$_ChatroomCopyWith<$Res> implements $ChatroomCopyWith<$Res> {
  factory _$$_ChatroomCopyWith(
          _$_Chatroom value, $Res Function(_$_Chatroom) then) =
      __$$_ChatroomCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String? roomName,
      String? receiverId,
      @JsonKey(name: 'createdDate', fromJson: _sendAtFromJson)
          DateTime? createdDate,
      @JsonKey(name: 'updatedDate', fromJson: _sendAtFromJson)
          DateTime? updatedDate,
      int unreadMessages,
      Message? lastMessage,
      @JsonKey(ignore: true)
          List<Message> messages,
      @JsonKey(ignore: true)
          List<User> users});

  @override
  $MessageCopyWith<$Res>? get lastMessage;
}

/// @nodoc
class __$$_ChatroomCopyWithImpl<$Res> extends _$ChatroomCopyWithImpl<$Res>
    implements _$$_ChatroomCopyWith<$Res> {
  __$$_ChatroomCopyWithImpl(
      _$_Chatroom _value, $Res Function(_$_Chatroom) _then)
      : super(_value, (v) => _then(v as _$_Chatroom));

  @override
  _$_Chatroom get _value => super._value as _$_Chatroom;

  @override
  $Res call({
    Object? id = freezed,
    Object? roomName = freezed,
    Object? receiverId = freezed,
    Object? createdDate = freezed,
    Object? updatedDate = freezed,
    Object? unreadMessages = freezed,
    Object? lastMessage = freezed,
    Object? messages = freezed,
    Object? users = freezed,
  }) {
    return _then(_$_Chatroom(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      roomName: roomName == freezed
          ? _value.roomName
          : roomName // ignore: cast_nullable_to_non_nullable
              as String?,
      receiverId: receiverId == freezed
          ? _value.receiverId
          : receiverId // ignore: cast_nullable_to_non_nullable
              as String?,
      createdDate: createdDate == freezed
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedDate: updatedDate == freezed
          ? _value.updatedDate
          : updatedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      unreadMessages: unreadMessages == freezed
          ? _value.unreadMessages
          : unreadMessages // ignore: cast_nullable_to_non_nullable
              as int,
      lastMessage: lastMessage == freezed
          ? _value.lastMessage
          : lastMessage // ignore: cast_nullable_to_non_nullable
              as Message?,
      messages: messages == freezed
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<Message>,
      users: users == freezed
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Chatroom implements _Chatroom {
  const _$_Chatroom(
      {this.id,
      this.roomName,
      this.receiverId,
      @JsonKey(name: 'createdDate', fromJson: _sendAtFromJson) this.createdDate,
      @JsonKey(name: 'updatedDate', fromJson: _sendAtFromJson) this.updatedDate,
      this.unreadMessages = 0,
      this.lastMessage,
      @JsonKey(ignore: true) final List<Message> messages = const [],
      @JsonKey(ignore: true) final List<User> users = const []})
      : _messages = messages,
        _users = users;

  factory _$_Chatroom.fromJson(Map<String, dynamic> json) =>
      _$$_ChatroomFromJson(json);

  @override
  final String? id;
  @override
  final String? roomName;
  @override
  final String? receiverId;
  @override
  @JsonKey(name: 'createdDate', fromJson: _sendAtFromJson)
  final DateTime? createdDate;
  @override
  @JsonKey(name: 'updatedDate', fromJson: _sendAtFromJson)
  final DateTime? updatedDate;
  @override
  @JsonKey()
  final int unreadMessages;
  @override
  final Message? lastMessage;
  final List<Message> _messages;
  @override
  @JsonKey(ignore: true)
  List<Message> get messages {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  final List<User> _users;
  @override
  @JsonKey(ignore: true)
  List<User> get users {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  @override
  String toString() {
    return 'Chatroom(id: $id, roomName: $roomName, receiverId: $receiverId, createdDate: $createdDate, updatedDate: $updatedDate, unreadMessages: $unreadMessages, lastMessage: $lastMessage, messages: $messages, users: $users)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Chatroom &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.roomName, roomName) &&
            const DeepCollectionEquality()
                .equals(other.receiverId, receiverId) &&
            const DeepCollectionEquality()
                .equals(other.createdDate, createdDate) &&
            const DeepCollectionEquality()
                .equals(other.updatedDate, updatedDate) &&
            const DeepCollectionEquality()
                .equals(other.unreadMessages, unreadMessages) &&
            const DeepCollectionEquality()
                .equals(other.lastMessage, lastMessage) &&
            const DeepCollectionEquality().equals(other._messages, _messages) &&
            const DeepCollectionEquality().equals(other._users, _users));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(roomName),
      const DeepCollectionEquality().hash(receiverId),
      const DeepCollectionEquality().hash(createdDate),
      const DeepCollectionEquality().hash(updatedDate),
      const DeepCollectionEquality().hash(unreadMessages),
      const DeepCollectionEquality().hash(lastMessage),
      const DeepCollectionEquality().hash(_messages),
      const DeepCollectionEquality().hash(_users));

  @JsonKey(ignore: true)
  @override
  _$$_ChatroomCopyWith<_$_Chatroom> get copyWith =>
      __$$_ChatroomCopyWithImpl<_$_Chatroom>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChatroomToJson(
      this,
    );
  }
}

abstract class _Chatroom implements Chatroom {
  const factory _Chatroom(
      {final String? id,
      final String? roomName,
      final String? receiverId,
      @JsonKey(name: 'createdDate', fromJson: _sendAtFromJson)
          final DateTime? createdDate,
      @JsonKey(name: 'updatedDate', fromJson: _sendAtFromJson)
          final DateTime? updatedDate,
      final int unreadMessages,
      final Message? lastMessage,
      @JsonKey(ignore: true)
          final List<Message> messages,
      @JsonKey(ignore: true)
          final List<User> users}) = _$_Chatroom;

  factory _Chatroom.fromJson(Map<String, dynamic> json) = _$_Chatroom.fromJson;

  @override
  String? get id;
  @override
  String? get roomName;
  @override
  String? get receiverId;
  @override
  @JsonKey(name: 'createdDate', fromJson: _sendAtFromJson)
  DateTime? get createdDate;
  @override
  @JsonKey(name: 'updatedDate', fromJson: _sendAtFromJson)
  DateTime? get updatedDate;
  @override
  int get unreadMessages;
  @override
  Message? get lastMessage;
  @override
  @JsonKey(ignore: true)
  List<Message> get messages;
  @override
  @JsonKey(ignore: true)
  List<User> get users;
  @override
  @JsonKey(ignore: true)
  _$$_ChatroomCopyWith<_$_Chatroom> get copyWith =>
      throw _privateConstructorUsedError;
}
