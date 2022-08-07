import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../auth/model/user.dart';
import 'message.dart';

part 'chat_room.freezed.dart';
part 'chat_room.g.dart';

DateTime _sendAtFromJson(Timestamp timestamp) => timestamp.toDate();

@freezed
class Chatroom with _$Chatroom {
  const factory Chatroom({
    String? id,
    String? roomName,
    String? receiverId,
    @JsonKey(name: 'createdDate', fromJson: _sendAtFromJson) DateTime? createdDate,
    @JsonKey(name: 'updatedDate', fromJson: _sendAtFromJson) DateTime?  updatedDate,
    @Default(0) int unreadMessages,
    Message? lastMessage,
    @JsonKey(ignore: true) @Default([]) List<Message> messages,
    @JsonKey(ignore: true) @Default([]) List<User> users,
  }) = _Chatroom;
  factory Chatroom.initial() => const Chatroom();

  factory Chatroom.fromJson(Map<String, dynamic> json) =>
      _$ChatroomFromJson(json);
}
