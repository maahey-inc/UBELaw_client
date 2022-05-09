
import 'package:flutter/material.dart';
import 'package:ubelaw_client/widgets/defaultButton.dart';

class OrderDialog extends StatefulWidget {
  final Function() pressYes;
  final Function() pressNo;
  final String name;
  final String desc;
  final String price;
  final int status;
  OrderDialog(
      {required this.pressNo,
      required this.pressYes,
      required this.name,
      required this.desc,
      required this.price,
      required this.status});

  @override
  _OrderDialogState createState() => _OrderDialogState();
}

class _OrderDialogState extends State<OrderDialog>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> opacityAnimation;
  Tween<double> opacityTween = Tween<double>(begin: 0.0, end: 1.0);
  Tween<double> marginTopTween = Tween<double>(begin: 300, end: 200);
  late Animation<double> marginTopAnimation;
  @override
  void initState() {
    super.initState();

    controller = AnimationController(
        duration: const Duration(milliseconds: 300), vsync: this);
    marginTopAnimation = marginTopTween.animate(controller)
      ..addListener(() {
        setState(() {});
      });
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    String btnTxt="Request";
    widget.status==1?btnTxt="Open":widget.status==2?btnTxt="Completed":widget.status==3?btnTxt="Cancelled":btnTxt="Request";
    return FadeTransition(
      opacity: opacityTween.animate(controller),
      child: Material(
        color: Colors.transparent,
        child: Container(

          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 100),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
          ),
          child: Stack(
            children: [

              Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20)),
                      color: Colors.black87,
                    ),
                    width: double.infinity,
                    height: 60,
                    child: Center(
                      child: Text(
                        "Order",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 25),
                  Row(children: [
                    Container(height: 60,
                      child: CircleAvatar(radius: 50,backgroundColor: Colors.blueGrey,),),
                    Text(
                      widget.name,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black87,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],),
                  SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(flex: 1, child: Container()),
                      Expanded(
                        flex: 4,
                        child:  Row(
                          children: [
                            Text(
                              "Description: ",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.black87,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ],
                        ),
                      ),

                      Expanded(
                        flex: 6,
                        child:   Row(
                          children: [
                            Text(
                              widget.desc,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.black87,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(flex: 1, child: Container()),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(flex: 1, child: Container()),
                      Expanded(
                        flex: 4,
                        child:  Row(
                          children: [
                            Text(
                              "Price: ",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.black87,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ],
                        ),
                      ),

                      Expanded(
                        flex: 6,
                        child:   Row(
                          children: [
                            Text(
                              widget.price,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.black87,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(flex: 1, child: Container()),
                    ],
                  ),



                  SizedBox(height: 25),
                ],
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 8.0),
                  child: defaultButton(true, btnTxt,  widget.pressYes),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
