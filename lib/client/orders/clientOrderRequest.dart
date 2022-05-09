import 'package:flutter/material.dart';
import 'package:ubelaw_client/widgets/orderDialog.dart';
class ClientOrderRequest extends StatefulWidget {
  const ClientOrderRequest({Key? key}) : super(key: key);

  @override
  State<ClientOrderRequest> createState() => _ClientOrderRequestState();
}

class _ClientOrderRequestState extends State<ClientOrderRequest> {
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
                }, name: 'Seller Name', price: '1200', desc: 'this is a test request', status: 0,
               ),
          );
        },
        child: Card(
          color: Colors.blueGrey.withOpacity(0.1),
          child: const ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 12,vertical: 4),

            leading:   CircleAvatar(radius: 50,backgroundColor: Colors.white,),
            title: Text("Seller Name"),
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
              }, name: 'Seller Name', price: '1200', desc: 'this is a test request', status: 0,
            ),
          );
        },
        child: Card(
          color: Colors.blueGrey.withOpacity(0.1),
          child:const  ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 12,vertical: 4),

            leading:   CircleAvatar(radius: 50,backgroundColor: Colors.white,),
            title: Text("Seller Name"),
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
              }, name: 'Seller Name', price: '1200', desc: 'this is a test request', status: 0,
            ),
          );
        },
        child: Card(
          color: Colors.blueGrey.withOpacity(0.1),
          child:const  ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 12,vertical: 4),

            leading:   CircleAvatar(radius: 50,backgroundColor: Colors.white,),
            title: Text("Seller Name"),
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
              }, name: 'Seller Name', price: '1200', desc: 'this is a test request', status: 0,
            ),
          );
        },
        child: Card(
          color: Colors.blueGrey.withOpacity(0.1),
          child: const ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 12,vertical: 4),

            leading:   CircleAvatar(radius: 50,backgroundColor: Colors.white,),
            title: Text("Seller Name"),
            subtitle: Text("type"),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
        ),
      ),
    ],));
  }
}
