import 'dart:async';

import 'package:flutter/material.dart';

import 'authentications/signinScreen.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startTimer() {
    Timer(new Duration(seconds: 3), () async {
      Navigator.push(
          context, MaterialPageRoute(builder: (c) => SignInScreen()));
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.all(24.0),
        child: Column(
          children: <Widget>[
            Expanded(
              child: Center(
                child: Image.asset("assets/images/logo1.png"),
              ),
            ),
            Text(
              "UBELaw Client",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
