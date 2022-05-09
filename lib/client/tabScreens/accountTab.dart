import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class AccountTab extends StatefulWidget {
  const AccountTab({Key? key}) : super(key: key);

  @override
  State<AccountTab> createState() => _AccountTabState();
}

class _AccountTabState extends State<AccountTab> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Stack(children: [
      Container(
        width: double.infinity,
        height: 330,
        color: Colors.black45,

      ),

      Column(
        children: [
          Container(height: 90,margin: EdgeInsets.only(top: 60),
          child: CircleAvatar(radius: 50,backgroundColor: Colors.white,),),
          Padding(padding: EdgeInsets.all(4)),
          Text("Kamran ",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 20),textAlign: TextAlign.center,),
          Padding(padding: EdgeInsets.all(4)),

          Padding(padding: EdgeInsets.symmetric(vertical: 8.0,horizontal: MediaQuery.of(context).size.width/4)
          ,child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("4.9 ",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 20),textAlign: TextAlign.center,),

                    Icon(Icons.star,color: Colors.amber,),
                    Icon(Icons.star,color: Colors.amber,),
                    Icon(Icons.star,color: Colors.amber,),
                    Icon(Icons.star,color: Colors.amber,),
                    Icon(Icons.star,color: Colors.amber,),
                  ],
                )

              ],),
          ),
          Padding(padding: EdgeInsets.all(4)),



        ],
      ),
      Align(
alignment: Alignment.bottomCenter,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 200,
            child: Column(children:  [
              SizedBox(height: 10),
              Card(
                color: Colors.blueGrey.withOpacity(0.1),
                child: ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 12,vertical: 4),

                  title: Text("Payment History"),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
              ),
              SizedBox(height: 10),
              Card(color: Colors.blueGrey.withOpacity(0.1),
                child: ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 12,vertical: 4),

                  title: Text("Signout"),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
              ),

            ],),
          ),
        ),
      ),

    ],));
  }
}
