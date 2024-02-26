import 'dart:async';

import 'package:flutter/material.dart';
import 'package:quiz_app/questions.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<Splash> {

  @override
  void initState() {            //The first fn that is called when the app is opened
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 1), () => Navigator.push(context, MaterialPageRoute(builder: (context) => const Question())));
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: Colors.red,
        body: Center(
          child: CircleAvatar(
            radius: 200,
            backgroundImage:AssetImage('image/logo.png'),
          )
        )
    );
  }
}
