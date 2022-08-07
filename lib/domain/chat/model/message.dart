import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'message.freezed.dart';
part 'message.g.dart';

DateTime _sendAtFromJson(Timestamp timestamp) => timestamp.toDate();

@freezed
class Message with _$Message {
  const factory Message({
    String? body,
    String? senderId,
    String? senderName,
    String? receiverId,
    String? receiverName,
    @JsonKey(name: 'createdDate', fromJson: _sendAtFromJson) DateTime? createdDate,
  }) = _Message;
  factory Message.initial() => const Message();

  factory Message.fromJson(Map<String, dynamic> json) =>
      _$MessageFromJson(json);
}
