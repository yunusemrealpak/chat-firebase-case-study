// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import 'package:chat_case_study/domain/auth/i_auth_repository.dart';
import 'package:chat_case_study/domain/auth/model/user.dart';
import 'package:chat_case_study/domain/chat/model/message.dart';

import '../../domain/chat/i_firestore_repository.dart';
import '../auth/auth_cubit.dart';
import '../core/base_cubit.dart';
import 'chat_state.dart';

@injectable
class ChatCubit extends BaseCubit<ChatState> {
  final IAuthRepository _authRepo;
  final IFirestoreRepository _firestoreRepository;
  ChatCubit(
    this._authRepo,
    this._firestoreRepository,
  ) : super(ChatState.initial());


  getChatrooms() async {
    emit(state.copyWith(isLoading: true));
    final _authCubit = context.read<AuthCubit>();
    final user = _authCubit.state.user;
    _firestoreRepository.getChatRooms(user!.id!).listen((chatrooms) {
      if (disposed) return;
      emit(state.copyWith(
        isLoading: false,
        chatRooms: chatrooms,
        currentUser: user,
      ));
    });
  }

  getChatroom(String chatRoomId) async {
    final _authCubit = context.read<AuthCubit>();
    final user = _authCubit.state.user;

    _firestoreRepository.setInRoom(chatRoomId, user!.id!, true);
    emit(state.copyWith(isLoading: true));
    _firestoreRepository.getChatroom(user.id!, chatRoomId).listen((chatroom) {
      if (disposed) return;
      emit(state.copyWith(
        isLoading: false,
        chatroom: chatroom,
        currentUser: user,
        receiver: chatroom.users.firstWhere((u) => u.id != user.id),
      ));
    });
  }

  sendMessage(String text) async {
    if (text.isEmpty) return;

    final bool receiverInRoom = await _firestoreRepository.getUserInRoom(
        state.chatroom!.id!, state.receiver!.id!);
    _firestoreRepository.sendMessage(
      chatRoomId: state.chatroom?.id,
      message: Message(
        senderId: state.currentUser!.id,
        senderName: state.currentUser?.name,
        receiverId: state.receiver?.id,
        receiverName: state.receiver?.name ?? "-",
        body: text,
        createdDate: DateTime.now(),
      ),
      receiverInRoom: receiverInRoom,
    );
  }

  Stream<bool> userOnlineStatus(String userId) {
    return _authRepo.userOnlineStatus(userId);
  }

  @override
  Future<void> close() {
    if (state.chatroom != null) {
      _firestoreRepository.setInRoom(state.chatroom!.id!, state.currentUser!.id!, false);
    }
    return super.close();
  }
}
