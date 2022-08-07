import 'package:chat_case_study/domain/chat/i_firestore_repository.dart';
import 'package:chat_case_study/domain/chat/model/message.dart';
import 'package:chat_case_study/domain/chat/model/chat_room.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';
import 'package:uuid/uuid.dart';

import '../../domain/auth/model/user.dart';

@Injectable(as: IFirestoreRepository)
class FirestoreRepository extends IFirestoreRepository {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  @override
  Stream<List<Chatroom>> getChatRooms(String userId) {
    return _firestore
        .collection("users")
        .doc(userId)
        .collection("chatrooms")
        .snapshots()
        .map((snapshot) {
      return snapshot.docs.map((doc) {
        return Chatroom.fromJson(doc.data());
      }).toList();
    });
  }

  @override
  Stream<Chatroom> getChatroom(String chatRoomId) {
    return CombineLatestStream.combine3<
            DocumentSnapshot<Map<String, dynamic>>,
            QuerySnapshot<Map<String, dynamic>>,
            QuerySnapshot<Map<String, dynamic>>,
            Chatroom>(
        _firestore
            .collection("chatrooms")
            .doc(chatRoomId)
            .snapshots(), //or whatever your first stream is
        _firestore
            .collection("chatrooms")
            .doc(chatRoomId)
            .collection("messages")
            .orderBy("createdDate", descending: true)
            .snapshots(), //or whatever your first stream is
        _firestore
            .collection("chatrooms")
            .doc(chatRoomId)
            .collection("users")
            .snapshots(), //or whatever your second stream is"),
        (groupSnapshot, messageSnapshot, usersSnapshot) {
      final group = groupSnapshot.data()!;
      return Chatroom(
        id: groupSnapshot.id,
        roomName: group['roomName'],
        receiverId: group['receiverId'],
        unreadMessages: group['unreadMessages'] ?? 0,
        messages: messageSnapshot.docs.map((doc) {
          return Message.fromJson(doc.data());
        }).toList(),
        users: usersSnapshot.docs.map((doc) {
          return User.fromJson(doc.data());
        }).toList(),
      );
    });
  }

  @override
  Future sendMessage(
      {String? chatRoomId,
      required Message message,
      bool receiverInRoom = false}) async {
    chatRoomId ??= const Uuid().v4();

    final userChatRoom = Chatroom(
      id: chatRoomId,
      receiverId: message.receiverId,
      roomName: message.receiverName,
    );

    final otherChatRoom = Chatroom(
      id: chatRoomId,
      receiverId: message.senderId,
      roomName: message.senderName,
    );

    final userChatRef = _firestore
        .collection('users')
        .doc(message.senderId)
        .collection('chatrooms');

    final otherChatRef = _firestore
        .collection('users')
        .doc(message.receiverId)
        .collection('chatrooms');

    final userChatDoc = await userChatRef.doc(chatRoomId).get();
    if (!userChatDoc.exists) {
      userChatRef.doc(chatRoomId).set(userChatRoom.toJson());
    }

    final otherChatDoc = await otherChatRef.doc(chatRoomId).get();
    if (!otherChatDoc.exists) {
      otherChatRef.doc(chatRoomId).set(otherChatRoom.toJson());
    }

    if(!receiverInRoom) {
      otherChatRef.doc(chatRoomId).update({
        'unreadMessages': FieldValue.increment(1),
      });
    }

    final documentReference = _firestore
        .collection('chatrooms')
        .doc(chatRoomId)
        .collection("messages")
        .doc(DateTime.now().millisecondsSinceEpoch.toString());

    _firestore.runTransaction((transaction) async {
      transaction.set(
        documentReference,
        message.toJson(),
      );
    });
  }

  @override
  Future setInRoom(String chatRoomId, String userId, bool status) async {
    if(status) {
      _firestore.collection("users").doc(userId).collection("chatrooms").doc(chatRoomId).set({
        'unreadMessages': 0,
      });
    }

    _firestore
        .collection("chatrooms")
        .doc(chatRoomId)
        .collection("users")
        .doc(userId)
        .set({
      "inRoom": status,
    });
  }
  
  @override
  Future<bool> getUserInRoom(String chatRoomId, String userId) async {
    final doc = await _firestore
        .collection("chatrooms")
        .doc(chatRoomId)
        .collection("users")
        .doc(userId)
        .get();

    return doc.get('inRoom') as bool;
  }
}
