import 'dart:async';

import 'package:flutter/material.dart';
import 'package:ubelaw_client/client/authentications/signupScreen.dart';
import 'package:ubelaw_client/widgets/chatWidget.dart';

import '../../widgets/OverviewCard.dart';
import '../chatScreenClient.dart';

class ChatTab extends StatefulWidget {
  const ChatTab({Key? key}) : super(key: key);

  @override
  State<ChatTab> createState() => _ChatTabState();
}

class _ChatTabState extends State<ChatTab> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Column(
            children: [
              const SizedBox(height: 10),
              ChatWidget(name: "Amjad Khan",lastMsg: "Hi..."),
              ChatWidget(name: "Aftab Khan",lastMsg: "How are you ..."),
              ChatWidget(name: "Ahmad Khan",lastMsg: "What about the request ..."),
              ChatWidget(name: "Wahab Khan",lastMsg: "Thank You for your services ..."),


            ],
          )
        ],
      ),
    );
  }
}
