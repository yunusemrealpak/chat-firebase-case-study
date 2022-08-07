// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Message _$MessageFromJson(Map<String, dynamic> json) {
  return _Message.fromJson(json);
}

/// @nodoc
mixin _$Message {
  String? get body => throw _privateConstructorUsedError;
  String? get senderId => throw _privateConstructorUsedError;
  String? get senderName => throw _privateConstructorUsedError;
  String? get receiverId => throw _privateConstructorUsedError;
  String? get receiverName => throw _privateConstructorUsedError;
  @JsonKey(name: 'createdDate', fromJson: _sendAtFromJson)
  DateTime? get createdDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessageCopyWith<Message> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageCopyWith<$Res> {
  factory $MessageCopyWith(Message value, $Res Function(Message) then) =
      _$MessageCopyWithImpl<$Res>;
  $Res call(
      {String? body,
      String? senderId,
      String? senderName,
      String? receiverId,
      String? receiverName,
      @JsonKey(name: 'createdDate', fromJson: _sendAtFromJson)
          DateTime? createdDate});
}

/// @nodoc
class _$MessageCopyWithImpl<$Res> implements $MessageCopyWith<$Res> {
  _$MessageCopyWithImpl(this._value, this._then);

  final Message _value;
  // ignore: unused_field
  final $Res Function(Message) _then;

  @override
  $Res call({
    Object? body = freezed,
    Object? senderId = freezed,
    Object? senderName = freezed,
    Object? receiverId = freezed,
    Object? receiverName = freezed,
    Object? createdDate = freezed,
  }) {
    return _then(_value.copyWith(
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      senderId: senderId == freezed
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as String?,
      senderName: senderName == freezed
          ? _value.senderName
          : senderName // ignore: cast_nullable_to_non_nullable
              as String?,
      receiverId: receiverId == freezed
          ? _value.receiverId
          : receiverId // ignore: cast_nullable_to_non_nullable
              as String?,
      receiverName: receiverName == freezed
          ? _value.receiverName
          : receiverName // ignore: cast_nullable_to_non_nullable
              as String?,
      createdDate: createdDate == freezed
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$$_MessageCopyWith<$Res> implements $MessageCopyWith<$Res> {
  factory _$$_MessageCopyWith(
          _$_Message value, $Res Function(_$_Message) then) =
      __$$_MessageCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? body,
      String? senderId,
      String? senderName,
      String? receiverId,
      String? receiverName,
      @JsonKey(name: 'createdDate', fromJson: _sendAtFromJson)
          DateTime? createdDate});
}

/// @nodoc
class __$$_MessageCopyWithImpl<$Res> extends _$MessageCopyWithImpl<$Res>
    implements _$$_MessageCopyWith<$Res> {
  __$$_MessageCopyWithImpl(_$_Message _value, $Res Function(_$_Message) _then)
      : super(_value, (v) => _then(v as _$_Message));

  @override
  _$_Message get _value => super._value as _$_Message;

  @override
  $Res call({
    Object? body = freezed,
    Object? senderId = freezed,
    Object? senderName = freezed,
    Object? receiverId = freezed,
    Object? receiverName = freezed,
    Object? createdDate = freezed,
  }) {
    return _then(_$_Message(
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      senderId: senderId == freezed
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as String?,
      senderName: senderName == freezed
          ? _value.senderName
          : senderName // ignore: cast_nullable_to_non_nullable
              as String?,
      receiverId: receiverId == freezed
          ? _value.receiverId
          : receiverId // ignore: cast_nullable_to_non_nullable
              as String?,
      receiverName: receiverName == freezed
          ? _value.receiverName
          : receiverName // ignore: cast_nullable_to_non_nullable
              as String?,
      createdDate: createdDate == freezed
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Message implements _Message {
  const _$_Message(
      {this.body,
      this.senderId,
      this.senderName,
      this.receiverId,
      this.receiverName,
      @JsonKey(name: 'createdDate', fromJson: _sendAtFromJson)
          this.createdDate});

  factory _$_Message.fromJson(Map<String, dynamic> json) =>
      _$$_MessageFromJson(json);

  @override
  final String? body;
  @override
  final String? senderId;
  @override
  final String? senderName;
  @override
  final String? receiverId;
  @override
  final String? receiverName;
  @override
  @JsonKey(name: 'createdDate', fromJson: _sendAtFromJson)
  final DateTime? createdDate;

  @override
  String toString() {
    return 'Message(body: $body, senderId: $senderId, senderName: $senderName, receiverId: $receiverId, receiverName: $receiverName, createdDate: $createdDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Message &&
            const DeepCollectionEquality().equals(other.body, body) &&
            const DeepCollectionEquality().equals(other.senderId, senderId) &&
            const DeepCollectionEquality()
                .equals(other.senderName, senderName) &&
            const DeepCollectionEquality()
                .equals(other.receiverId, receiverId) &&
            const DeepCollectionEquality()
                .equals(other.receiverName, receiverName) &&
            const DeepCollectionEquality()
                .equals(other.createdDate, createdDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(body),
      const DeepCollectionEquality().hash(senderId),
      const DeepCollectionEquality().hash(senderName),
      const DeepCollectionEquality().hash(receiverId),
      const DeepCollectionEquality().hash(receiverName),
      const DeepCollectionEquality().hash(createdDate));

  @JsonKey(ignore: true)
  @override
  _$$_MessageCopyWith<_$_Message> get copyWith =>
      __$$_MessageCopyWithImpl<_$_Message>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MessageToJson(
      this,
    );
  }
}

abstract class _Message implements Message {
  const factory _Message(
      {final String? body,
      final String? senderId,
      final String? senderName,
      final String? receiverId,
      final String? receiverName,
      @JsonKey(name: 'createdDate', fromJson: _sendAtFromJson)
          final DateTime? createdDate}) = _$_Message;

  factory _Message.fromJson(Map<String, dynamic> json) = _$_Message.fromJson;

  @override
  String? get body;
  @override
  String? get senderId;
  @override
  String? get senderName;
  @override
  String? get receiverId;
  @override
  String? get receiverName;
  @override
  @JsonKey(name: 'createdDate', fromJson: _sendAtFromJson)
  DateTime? get createdDate;
  @override
  @JsonKey(ignore: true)
  _$$_MessageCopyWith<_$_Message> get copyWith =>
      throw _privateConstructorUsedError;
}
