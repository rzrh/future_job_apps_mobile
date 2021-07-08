import 'package:flutter/material.dart';
import 'package:future_job/pages/sign_in_page.dart';
class GetStartedPage extends StatelessWidget {
  const GetStartedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/bg-startpage.png'),
                    fit: BoxFit.cover)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Build Your Next \nFuture Career Like \na Master",
                  style: TextStyle(
                      color: Color(0xffFFFFFF),
                      fontSize: 30,
                      fontFamily: 'Poppins'),
                ),
                SizedBox(height: 10),
                Text("18,000 jobs available",
                    style: TextStyle(
                        color: Color(0xffFFFFFF),
                        fontFamily: 'Poppins',
                        fontSize: 14,
                        fontWeight: FontWeight.w300)),
                Center(
                    child: Padding(
                  padding: const EdgeInsets.only(top: 300),
                  child: Container(
                      width: 150,
                      height: 45,
                      child: TextButton(
                          style: TextButton.styleFrom(
                              backgroundColor: Color(0xffFFFFFF),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(66))),
                          onPressed: () {},
                          child: Text(
                            'Get Started',
                            style: TextStyle(
                                color: Color(0xff4141A4),
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Poppins',
                                fontSize: 12),
                          ))),
                )),
                Center(
                    child: Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Container(
                    width: 150,
                    height: 45,
                    child: OutlinedButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => SignInPage()));
                        },
                       style: OutlinedButton.styleFrom(
                              side: BorderSide(
                                color: Color(0xffFFFFFF)
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(66),
                              )),
                        child: Text(
                          'Sign In',
                          style: TextStyle(
                              color: Color(0xffFFFFFF),
                              fontSize: 12,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500),
                        )),
                  ),
                ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
