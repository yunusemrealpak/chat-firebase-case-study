import 'package:chat_case_study/application/core/base_state.dart';
import 'package:chat_case_study/domain/chat/model/chat_room.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_state.freezed.dart';

@freezed
class ChatState extends BaseState with _$ChatState {
  const factory ChatState({
    @Default(false) bool isLoading,
    @Default(<Chatroom>[]) List<Chatroom> chatRooms,
    Chatroom? chatroom,
  }) = _ChatState;
  factory ChatState.initial() => const ChatState();
}