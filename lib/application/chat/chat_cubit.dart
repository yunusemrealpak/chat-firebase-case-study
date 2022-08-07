// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:chat_case_study/domain/chat/model/message.dart';
import 'package:injectable/injectable.dart';

import '../../domain/chat/i_firestore_repository.dart';
import '../core/base_cubit.dart';
import 'chat_state.dart';

@injectable
class ChatCubit extends BaseCubit<ChatState> {
  final IFirestoreRepository _firestoreRepository;
  ChatCubit(
    this._firestoreRepository,
  ) : super(ChatState.initial());

  getChatrooms() async {
    emit(state.copyWith(isLoading: true));
    _firestoreRepository.getChatRooms("123").listen((chatrooms) {
      if (disposed) return;
      emit(state.copyWith(
        isLoading: false,
        chatRooms: chatrooms,
      ));
    });
  }

  goToChatroom() {}

  getChatroom(String chatRoomId) async {
    _firestoreRepository.setInRoom(chatRoomId, "123", true);
    emit(state.copyWith(isLoading: true));
    _firestoreRepository.getChatroom(chatRoomId).listen((chatroom) {
      if (disposed) return;
      emit(state.copyWith(
        isLoading: false,
        chatroom: chatroom,
      ));
    });
  }

  sendMessage(String text) async {
    if (text.isEmpty) return;

    final bool receiverInRoom = await _firestoreRepository.getUserInRoom(
        state.chatroom!.id!, state.chatroom!.receiverId!);
    _firestoreRepository.sendMessage(
      chatRoomId: state.chatroom?.id,
      message: Message(
        senderId: "123",
        senderName: "Yunus Emre",
        receiverId: state.chatroom?.receiverId,
        receiverName: state.chatroom?.roomName ?? "Yunus Emre",
        body: text,
        createdDate: DateTime.now(),
      ),
      receiverInRoom: receiverInRoom,
    );
  }

  @override
  Future<void> close() {
    if (state.chatroom != null) {
      _firestoreRepository.setInRoom(state.chatroom!.id!, "123", false);
    }
    return super.close();
  }
}
