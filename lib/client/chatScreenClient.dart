import 'package:flutter/material.dart';
import 'package:ubelaw_client/client/createOfferSeller.dart';
import 'package:ubelaw_client/widgets/defaultButton.dart';

class ChatPageClient extends StatefulWidget {
  const ChatPageClient({Key? key}) : super(key: key);

  @override
  State<ChatPageClient> createState() => _ChatPageClientState();
}

class _ChatPageClientState extends State<ChatPageClient> {
  TextEditingController? msgController;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: ListView(
            children: [
              MessageTile("khan", "HI", true),
              MessageTile("Ahmad", "Hello", false),
              MessageTile("khan", "How are you", true),
              MessageTile("Ahmad", "Fine What about You", false),
            ],
          ),
        ),
        Container(
          //color: Colors.white,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 5.0, vertical: 10.0),
                padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25.0),
                ),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: TextField(
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                        textCapitalization: TextCapitalization.sentences,
                        controller: msgController,
                        decoration: InputDecoration.collapsed(
                          hintText: 'Send Message ...',
                        ),
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.send),
                      color: Colors.blue,
                      iconSize: 30.0,
                      onPressed: () async {},
                    ),
                  ],
                ),

              ),

              SizedBox(height: 2,)
            ],
          ),
        ),
      ],
    );
  }
}


class MessageTile extends StatelessWidget {
  final String msg;
  final String name;
  final bool isMe;
  const MessageTile(this.name, this.msg, this.isMe);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: isMe ? 0 : 24, right: isMe ? 24 : 0),
      margin: EdgeInsets.symmetric(vertical: 8),
      width: MediaQuery.of(context).size.width,
      alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: isMe
                  ? [const Color(0xff007EF4), const Color(0xff2A75BC)]
                  : [const Color(0xFF4b4b40), const Color(0xFF4b4b40)]),
          borderRadius: isMe
              ? BorderRadius.only(
            topLeft: Radius.circular(5),
            topRight: Radius.circular(5),
            bottomLeft: Radius.circular(5),
            bottomRight: Radius.circular(5),
          )
              : BorderRadius.only(
            topLeft: Radius.circular(5),
            topRight: Radius.circular(5),
            bottomRight: Radius.circular(5),
            bottomLeft: Radius.circular(5),
          ),
        ),
        child: Column(
          crossAxisAlignment:
          isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: TextStyle(
                  color: Colors.white70,
                  fontSize: 15,
                  fontStyle: FontStyle.italic),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              msg,
              style: TextStyle(color: Colors.white, fontSize: 17),
            ),
          ],
        ),
      ),
    );
  }
}