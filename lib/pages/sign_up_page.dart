import 'package:flutter/material.dart';
import 'package:future_job/pages/home_page.dart';
import 'package:future_job/theme.dart';
import 'package:email_validator/email_validator.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool isEmailValid = true;
  bool isUploaded = false;

  TextEditingController emailController = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    Widget uploadedImage() {
      return Center(
        child: InkWell(
          onTap: () {
           setState(() {
              isUploaded = !isUploaded;
           });
          },
          child: Column(
            children: [
              Image.asset(
                'assets/images/upload.png',
                width: 100,
              )
            ],
          ),
        ),
      );
    }

    Widget showedImage() {
      return Center(
        child: InkWell(
          onTap: () {
           setState(() {
              isUploaded = !isUploaded;
           });
          },
          child: Column(
            children: [
              Image.asset(
                'assets/images/user_pic.png',
                width: 100,
              )
            ],
          ),
        ),
      );
    }

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
                  Text('Sign Up', style: titleTextStyle),
                  SizedBox(height: 2),
                  Text('Begin New Journey', style: subtitleTextStyle),
                  SizedBox(height: 30),
                  isUploaded ? showedImage() : uploadedImage(),
                  SizedBox(height: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Full Name',
                        style: titleTextStyle,
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            fillColor: Color(0xffF1F0F5),
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(66),
                                borderSide: BorderSide.none),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(66),
                                borderSide:
                                    BorderSide(color: Color(0xff4141A4)))),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Email Address',
                        style: titleTextStyle,
                      ),
                      SizedBox(
                        height: 4,
                      ),
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
                                borderRadius: BorderRadius.circular(66),
                                borderSide: BorderSide.none),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(66),
                                borderSide: BorderSide(
                                    color: isEmailValid
                                        ? Color(0xff4141A4)
                                        : Color(0xffFD4F56)))),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Password',
                        style: titleTextStyle,
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            fillColor: Color(0xffF1F0F5),
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(66),
                                borderSide: BorderSide.none),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(66),
                                borderSide:
                                    BorderSide(color: Color(0xff4141A4)))),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Your Goal',
                        style: titleTextStyle,
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            fillColor: Color(0xffF1F0F5),
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(66),
                                borderSide: BorderSide.none),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(66),
                                borderSide:
                                    BorderSide(color: Color(0xff4141A4)))),
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
                                      borderRadius: BorderRadius.circular(66))),
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()),);
                              },
                              child: Text('Sign Up', style: buttonTextStyle)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, bottom: 20),
                        child: Center(
                          child: InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Text(
                              'Back to Sign In',
                              style: TextStyle(
                                  color: Color(0xffB3B5C4),
                                  fontFamily: 'Poppins',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300),
                            ),
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
