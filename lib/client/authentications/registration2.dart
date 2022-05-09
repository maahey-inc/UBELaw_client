import 'package:flutter/material.dart';

import '../../widgets/confirmDialog.dart';
import '../../widgets/defaultButton.dart';
import '../main_screen.dart';
class Registration2 extends StatefulWidget {
  const Registration2({Key? key}) : super(key: key);

  @override
  State<Registration2> createState() => _Registration2State();
}

class _Registration2State extends State<Registration2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children:  [
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Image.asset("assets/images/logo1.png"),
              ),
              const  SizedBox(height: 10),

              Container(
                height: 200,
                padding: const EdgeInsets.only(top: 4.0),
                child: Card(
                  shadowColor: Colors.blueGrey,
                  elevation: 5,
                  color: Color(0xFF262A34),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        bottomLeft: Radius.circular(12),
                        topRight: Radius.circular(12),
                        bottomRight: Radius.circular(12)),
                  ),
                  child: Container(
                    width: MediaQuery.of(context).size.width/1.1,
                    /*decoration: BoxDecoration(
            border: Border(left: BorderSide(color: cardTheme, width: 6.0)),
          ),*/
                    child: Stack(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            // Title Text
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(
                                child: Text(
                                  "Upload Credientials",
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(
                                child: Text(
                                  "1",
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),


                            // Content in the middle of the Card


                            // Button at the bottom of the Card

                          ],
                        ),

                      ],
                    ),
                  ),
                ),
              ),


              const  SizedBox(height: 10),


              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Card(
                    shadowColor: Colors.blueGrey,
                    elevation: 5,
                    color: Color(0xFF262A34),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(12),
                          bottomLeft: Radius.circular(12),
                          topRight: Radius.circular(12),
                          bottomRight: Radius.circular(12)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Center(
                        child: Text(
                          "1",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Card(
                    shadowColor: Colors.blueGrey,
                    elevation: 5,
                    color: Color(0xFF262A34),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(12),
                          bottomLeft: Radius.circular(12),
                          topRight: Radius.circular(12),
                          bottomRight: Radius.circular(12)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Center(
                        child: Text(
                          "1",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Card(
                    shadowColor: Colors.blueGrey,
                    elevation: 5,
                    color: Color(0xFF262A34),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(12),
                          bottomLeft: Radius.circular(12),
                          topRight: Radius.circular(12),
                          bottomRight: Radius.circular(12)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Center(
                        child: Text(
                          "1",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Card(
                    shadowColor: Colors.blueGrey,
                    elevation: 5,
                    color: Color(0xFF262A34),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(12),
                          bottomLeft: Radius.circular(12),
                          topRight: Radius.circular(12),
                          bottomRight: Radius.circular(12)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Center(
                        child: Text(
                          "1",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const  SizedBox(height: 10),
              defaultButton(true,"Done",(){

                showDialog(
                  context: context,
                  builder: (_) => ConfirmDialog(
                      pressYes: () {
                        Navigator.push(context, MaterialPageRoute(builder: (c)=>MainScreen()));
                      },
                      pressNo: () {
                        Navigator.of(context).pop();
                      },
                      title: "Popup",
                      message:
                      "We received your request and we are processing it"),
                );
              }),

            ],
          ),
        ),
      ),
    );
  }
}
