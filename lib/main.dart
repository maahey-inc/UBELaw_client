import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import 'client/splashScreen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp( MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  static restartApp(BuildContext context){
    context.findAncestorStateOfType<_MyAppState>()!.restartApp;
  }

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Key key=UniqueKey();
  void restartApp(){
    setState(() {
      key=UniqueKey();
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: EasyLoading.init(),
      debugShowCheckedModeBanner: false,
      title: 'UBELaw',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: KeyedSubtree(child: SplashScreen(),
        key: key,
      ),

    );
  }
}


