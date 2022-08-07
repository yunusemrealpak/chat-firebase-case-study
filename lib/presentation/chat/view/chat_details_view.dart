// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:auto_route/auto_route.dart';
import 'package:chat_case_study/application/auth/auth_cubit.dart';
import 'package:chat_case_study/application/chat/chat_cubit.dart';
import 'package:chat_case_study/application/chat/chat_state.dart';
import 'package:chat_case_study/presentation/_core/base_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChatDetailsView extends StatefulWidget {
  final String chatRoomId;
  const ChatDetailsView({
    Key? key,
    required this.chatRoomId,
  }) : super(key: key);

  @override
  State<ChatDetailsView> createState() => _ChatDetailsViewState();
}

class _ChatDetailsViewState extends State<ChatDetailsView> {
  late TextEditingController _textEditingController;
  late ChatCubit cubit;

  @override
  void initState() {
    super.initState();
    _textEditingController = TextEditingController();
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BaseView<ChatCubit, ChatState>(
      onCubitReady: (cubit) {
        this.cubit = cubit;
        cubit.setContext(context);
        cubit.getChatroom(widget.chatRoomId);
      },
      builder: (context, cubit, state) => Scaffold(
        body: Column(
          children: [
            ListTile(
              leading: CircleAvatar(
                  backgroundColor: Colors.grey[200], child: const Text('TB')),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(state.chatroom?.roomName ?? ""),
                  Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Colors.amber[200],
                          borderRadius: BorderRadius.circular(5)),
                      child: const Center(
                        child: Text('Randevu Bekliyor',
                            style: TextStyle(
                                color: Color.fromARGB(255, 104, 78, 1),
                                fontSize: 12)),
                      )),
                ],
              ),
              subtitle: Row(
                children: const [
                  CircleAvatar(backgroundColor: Colors.green, radius: 5),
                  SizedBox(width: 10),
                  Text(
                    'Çevrimiçi',
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                reverse: true,
                itemCount: state.chatroom?.messages.length ?? 0,
                itemBuilder: (context, index) {
                  final message = state.chatroom!.messages.elementAt(index);
                  return ChatBubble(
                    text: message.body!,
                    isCurrentUser: message.senderId == context.read<AuthCubit>().state.user?.id,
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.grey[300]),
                height: 50,
                child: TextFormField(
                  controller: _textEditingController,
                  onFieldSubmitted: (text) {
                    cubit.sendMessage(text);
                    _textEditingController.clear();
                  },
                  decoration: InputDecoration(
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    border: InputBorder.none,
                    suffixIcon: IconButton(
                      onPressed: () {
                        cubit.sendMessage(_textEditingController.text);
                        _textEditingController.clear();
                      },
                      icon: const Icon(Icons.send),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ChatBubble extends StatelessWidget {
  const ChatBubble({
    Key? key,
    required this.text,
    required this.isCurrentUser,
  }) : super(key: key);
  final String text;
  final bool isCurrentUser;

  @override
  Widget build(BuildContext context) {
    return Padding(
      // asymmetric padding
      padding: EdgeInsets.fromLTRB(
        isCurrentUser ? 64.0 : 16.0,
        4,
        isCurrentUser ? 16.0 : 64.0,
        4,
      ),
      child: Align(
        // align the child within the container
        alignment: isCurrentUser ? Alignment.centerRight : Alignment.centerLeft,
        child: DecoratedBox(
          // chat bubble decoration
          decoration: BoxDecoration(
            color: isCurrentUser ? Colors.green : Colors.grey[300],
            borderRadius: BorderRadius.circular(16),
          ),
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Text(
              text,
              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                  color: isCurrentUser ? Colors.white : Colors.black87),
            ),
          ),
        ),
      ),
    );
  }
}
