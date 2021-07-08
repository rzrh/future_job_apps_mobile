import 'package:flutter/material.dart';
import 'package:future_job/pages/home_page.dart';
import 'package:future_job/pages/onboarding_page.dart';
import 'package:future_job/pages/sign_in_page.dart';
import 'package:future_job/pages/sign_up_page.dart';
import 'package:future_job/pages/splash_page.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/onboarding': (context) => OnBoardingPage(),
        '/sign-in': (context) => SignInPage(),
        '/sign-up': (context) => SignUpPage(),
        '/home': (context) => HomePage(),
      },
    );
  }
}