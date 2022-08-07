// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Message _$$_MessageFromJson(Map<String, dynamic> json) => _$_Message(
      body: json['body'] as String?,
      senderId: json['senderId'] as String?,
      senderName: json['senderName'] as String?,
      receiverId: json['receiverId'] as String?,
      receiverName: json['receiverName'] as String?,
      createdDate: _sendAtFromJson(json['createdDate'] as Timestamp),
    );

Map<String, dynamic> _$$_MessageToJson(_$_Message instance) =>
    <String, dynamic>{
      'body': instance.body,
      'senderId': instance.senderId,
      'senderName': instance.senderName,
      'receiverId': instance.receiverId,
      'receiverName': instance.receiverName,
      'createdDate': FieldValue.serverTimestamp(),
    };
