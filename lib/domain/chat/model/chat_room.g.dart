// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_room.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Chatroom _$$_ChatroomFromJson(Map<String, dynamic> json) => _$_Chatroom(
      id: json['id'] as String?,
      roomName: json['roomName'] as String?,
      receiverId: json['receiverId'] as String?,
      createdDate: _sendAtFromJson(json['createdDate'] as Timestamp),
      updatedDate: _sendAtFromJson(json['updatedDate'] as Timestamp),
      unreadMessages: json['unreadMessages'] as int? ?? 0,
      lastMessage: json['lastMessage'] == null
          ? null
          : Message.fromJson(json['lastMessage'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ChatroomToJson(_$_Chatroom instance) =>
    <String, dynamic>{
      'id': instance.id,
      'roomName': instance.roomName,
      'receiverId': instance.receiverId,
      'createdDate': instance.createdDate?.toIso8601String(),
      'updatedDate': instance.updatedDate?.toIso8601String(),
      'unreadMessages': instance.unreadMessages,
      'lastMessage': instance.lastMessage,
    };
