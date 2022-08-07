import 'package:chat_case_study/domain/chat/model/chat_room.dart';
import 'model/message.dart';

abstract class IFirestoreRepository {
  Stream<Chatroom> getChatroom(String userId, String chatRoomId);
  Stream<List<Chatroom>> getChatRooms(String userId);
  Future sendMessage({String? chatRoomId, required Message message, bool receiverInRoom = false});

  Future<bool> getUserInRoom(String chatRoomId, String userId);
  Future setInRoom(String chatRoomId, String userId, bool status);
}
