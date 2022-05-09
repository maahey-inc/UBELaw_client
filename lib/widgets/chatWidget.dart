import 'package:flutter/material.dart';
import 'package:ubelaw_client/client/chatScreenClient.dart';
class ChatWidget extends StatefulWidget {
  final String name;
  final String lastMsg;

   // ignore: use_key_in_widget_constructors
   const ChatWidget({Key? key, required this.name, required this.lastMsg});

  @override
  State<ChatWidget> createState() => _ChatWidgetState();
}

class _ChatWidgetState extends State<ChatWidget> {
  @override
  Widget build(BuildContext context) {
    return   Container(
      padding: const EdgeInsets.only(top: 4.0),
      child: GestureDetector(
        onTap: (){
          Navigator.push(context,
              MaterialPageRoute(builder: (c) =>const ChatPageClient()));
        },
        child: Card(
          shadowColor: Colors.blueGrey,
          elevation: 5,
          color:const Color(0xFF262A34),
          shape:const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                bottomLeft: Radius.circular(12),
                topRight: Radius.circular(12),
                bottomRight: Radius.circular(12)),
          ),
          child: Container(
            padding:const EdgeInsets.all(10),
            width: MediaQuery.of(context).size.width / 1.1,
            // decoration: BoxDecoration(
            //   border: Border(
            //       left: BorderSide(color: Colors.black54, width: 6.0)),
            // ),
            child: Stack(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [

                   const Expanded(
                      flex: 3,
                      child:SizedBox(
                        height: 60,
                        child:  CircleAvatar(
                          radius: 50,
                          backgroundColor: Colors.blueGrey,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 7,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                widget.name,
                                style:const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                          Row(

                            children: [
                                Text(
                                widget.lastMsg,
                                maxLines: 2,
                                style:const TextStyle(
                                    color: Colors.white,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15),
                                textAlign: TextAlign.center,
                              ),

                            ],
                          ),
                        ],
                      ),
                    ),

                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
