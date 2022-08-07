import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../application/chat/chat_cubit.dart';
import '../../../application/chat/chat_state.dart';
import '../../_core/base_view.dart';

class ChatView extends StatelessWidget {
  const ChatView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView<ChatCubit, ChatState>(
      builder: (context, cubit, state) => Scaffold(
        appBar: AppBar(
          leading: const AutoLeadingButton(),
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconTheme: const IconThemeData(color: Colors.black),
          title: Text(
            "Mesajlarım",
            style: GoogleFonts.lato().copyWith(color: Colors.black),
          ),
          centerTitle: false,
        ),
        body: const AutoRouter(),
      ),
    );
  }
}
