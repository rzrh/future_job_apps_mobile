import 'dart:async';

import 'package:flutter/material.dart';
import 'package:future_job/pages/started_page.dart';

class SplashPage extends StatefulWidget {
  

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState(){
    super.initState();

    Timer(Duration(seconds: 3), (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => GetStartedPage()));
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff4141A4),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/logo_splash.png', width: 49, height: 66,),
            SizedBox(height: 50),
            Text("FUTURE JOB", style: TextStyle(color: Color(0xffFFFFFF), fontFamily: 'Poppins', fontWeight: FontWeight.w600, fontSize: 30),)
          ],
        ),
      ),
    );
  }
}