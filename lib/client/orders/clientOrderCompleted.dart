import 'package:flutter/material.dart';

import '../../widgets/orderDialog.dart';
class ClientOrderCompleted extends StatefulWidget {
  const ClientOrderCompleted({Key? key}) : super(key: key);

  @override
  State<ClientOrderCompleted> createState() => _ClientOrderCompletedState();
}

class _ClientOrderCompletedState extends State<ClientOrderCompleted> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Column(children: [
      GestureDetector(
        onTap: (){
          showDialog(
            context: context,
            builder: (_) => OrderDialog(
              pressYes: () {
                Navigator.of(context).pop();
              },
              pressNo: () {
                Navigator.of(context).pop();
              }, name: 'Client Name', price: '1200', desc: 'this is a test request', status: 2,
            ),
          );
        },
        child: Card(
          color: Colors.blueGrey.withOpacity(0.1),
          child: ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 12,vertical: 4),

            leading:   CircleAvatar(radius: 50,backgroundColor: Colors.white,),
            title: Text("Client Name"),
            subtitle: Text("type"),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
        ),
      ),
      GestureDetector(
        onTap: (){
          showDialog(
            context: context,
            builder: (_) => OrderDialog(
              pressYes: () {
                Navigator.of(context).pop();
              },
              pressNo: () {
                Navigator.of(context).pop();
              }, name: 'Client Name', price: '1200', desc: 'this is a test request', status: 2,
            ),
          );
        },
        child: Card(
          color: Colors.blueGrey.withOpacity(0.1),
          child: ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 12,vertical: 4),

            leading:   CircleAvatar(radius: 50,backgroundColor: Colors.white,),
            title: Text("Client Name"),
            subtitle: Text("type"),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
        ),
      ),
      GestureDetector(
        onTap: (){
          showDialog(
            context: context,
            builder: (_) => OrderDialog(
              pressYes: () {
                Navigator.of(context).pop();
              },
              pressNo: () {
                Navigator.of(context).pop();
              }, name: 'Client Name', price: '1200', desc: 'this is a test request', status: 2,
            ),
          );
        },
        child: Card(
          color: Colors.blueGrey.withOpacity(0.1),
          child: ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 12,vertical: 4),

            leading:   CircleAvatar(radius: 50,backgroundColor: Colors.white,),
            title: Text("Client Name"),
            subtitle: Text("type"),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
        ),
      ),
      GestureDetector(
        onTap: (){
          showDialog(
            context: context,
            builder: (_) => OrderDialog(
              pressYes: () {
                Navigator.of(context).pop();
              },
              pressNo: () {
                Navigator.of(context).pop();
              }, name: 'Client Name', price: '1200', desc: 'this is a test request', status: 2,
            ),
          );
        },
        child: Card(
          color: Colors.blueGrey.withOpacity(0.1),
          child: ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 12,vertical: 4),

            leading:   CircleAvatar(radius: 50,backgroundColor: Colors.white,),
            title: Text("Client Name"),
            subtitle: Text("type"),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
        ),
      ),
    ],));
  }
}
