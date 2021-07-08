import 'package:flutter/material.dart';
import 'package:future_job/theme.dart';
import 'package:email_validator/email_validator.dart';
import 'package:future_job/pages/sign_up_page.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool isEmailValid = true;

  TextEditingController emailController = TextEditingController(text: '');
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top: 20, left: 24, right: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Sign In',
                    style: titleTextStyle,
                  ),
                  SizedBox(height: 2),
                  Text(
                    'Build Your Career',
                    style: subtitleTextStyle,
                  ),
                  SizedBox(height: 20),
                  Center(
                      child: Column(
                    children: [
                      Image.asset(
                        'assets/images/signin.png',
                        width: 200,
                        height: 180,
                      )
                    ],
                  )),
                  SizedBox(height: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Email Address',
                        style: titleTextStyle,
                      ),
                      SizedBox(height: 4),
                      TextFormField(
                        controller: emailController,
                        onChanged: (value) {
                          print(value);
                          bool isValid = EmailValidator.validate(value);
                          print(isValid);
                          if (isValid) {
                            setState(() {
                              isEmailValid = true;
                            });
                          } else {
                            setState(() {
                              isEmailValid = false;
                            });
                          }
                        },
                        decoration: InputDecoration(
                          fillColor: Color(0xffF1F0F5),
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(100),
                            borderSide: BorderSide.none,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(100),
                            borderSide: BorderSide(
                                color: isEmailValid
                                    ? Color(0xff4141A4)
                                    : Color(0xffFD4F56)),
                          ),
                          hintText: '',
                        ),
                        style: TextStyle(
                            color: isEmailValid
                                ? Color(0xff4141A4)
                                : Color(0xffFD4F56)),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Password',
                        style: titleTextStyle,
                      ),
                      SizedBox(height: 4),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          fillColor: Color(0xffF1F0F5),
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(100),
                            borderSide: BorderSide.none,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(100),
                            borderSide: BorderSide(color: Color(0xff4141A4)),
                          ),
                          hintText: '',
                        ),
                      ),
                      SizedBox(height: 20),
                      Center(
                        child: Container(
                          width: 300,
                          height: 45,
                          child: TextButton(
                              style: TextButton.styleFrom(
                                  backgroundColor: Color(0xff4141A4),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(66),
                                  )),
                              onPressed: () {},
                              child: Text(
                                'Sign In',
                                style: buttonTextStyle,
                              )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Center(
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SignUpPage()));
                            },
                            child: Text('Create New Account',
                                style: TextStyle(
                                    color: Color(0xffB3B5C4),
                                    fontFamily: 'Poppins',
                                    fontSize: 12,
                                    fontWeight: FontWeight.w300)),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
