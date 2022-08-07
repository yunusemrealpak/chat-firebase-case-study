import 'package:auto_route/auto_route.dart';
import 'package:chat_case_study/application/chat/chat_cubit.dart';
import 'package:chat_case_study/application/chat/chat_state.dart';
import 'package:chat_case_study/presentation/_core/base_view.dart';
import 'package:chat_case_study/presentation/route/router.gr.dart';
import 'package:flutter/material.dart';

import '../../route/route_paths.dart';

class ChatListView extends StatelessWidget {
  const ChatListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView<ChatCubit, ChatState>(
      onCubitReady: (cubit) {
        cubit.setContext(context);
        cubit.getChatrooms();
      },
      builder: (context, cubit, state) {
        return Scaffold(
          body: ListView.builder(
            itemCount: state.chatRooms.length,
            itemBuilder: (context, index) {
              final chatroom = state.chatRooms.elementAt(index);
              return ListTile(
                onTap: () {
                  context.router
                      .push(ChatDetailsRoute(chatRoomId: chatroom.id!));
                },
                leading: Stack(
                  children: [
                    CircleAvatar(
                        backgroundColor: Colors.grey[200],
                        child: const Text('TB')),
                    const Positioned(
                      bottom: 5,
                      right: -1,
                      child: CircleAvatar(
                          backgroundColor: Colors.green, radius: 5),
                    )
                  ],
                ),
                title: Row(
                  children: [
                    Expanded(flex: 2, child: Text(chatroom.roomName ?? "")),
                    Expanded(
                        flex: 2,
                        child: Container(
                            decoration: BoxDecoration(
                                color: Colors.amber[200],
                                borderRadius: BorderRadius.circular(5)),
                            child: const Center(
                              child: Text('Randevu Bekliyor',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 104, 78, 1),
                                      fontSize: 12)),
                            ))),
                    const Expanded(
                        child: Center(
                      child: Text(
                        '12:40',
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                    ))
                  ],
                ),
                subtitle: Row(
                  children: [
                    Spacer(),
                    // Expanded(
                    //   flex: 5,
                    //   child: Text(
                    //     'Lorem ipsum dolor sit amet lorem ipsum' * 2,
                    //     overflow: TextOverflow.ellipsis,
                    //     style: const TextStyle(color: Colors.grey, fontSize: 12),
                    //   ),
                    // ),
                    Visibility(
                      visible: chatroom.unreadMessages != 0,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Container(
                          height: 15,
                          width: 20,
                          decoration: BoxDecoration(
                            color: const Color(0xff004834),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(
                            child: Text(
                              '${chatroom.unreadMessages}',
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        );
      },
    );
  }
}
