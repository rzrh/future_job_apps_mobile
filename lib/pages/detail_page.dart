import 'package:flutter/material.dart';
import 'package:future_job/theme.dart';

class DetailPage extends StatefulWidget {
  @override
  _DetailPageState createState() => _DetailPageState();
}

bool isAplied = false;

class _DetailPageState extends State<DetailPage> {
  @override
  Widget applyButton() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 41),
        child: Container(
          width: 150,
          height: 45,
          child: TextButton(
            style: TextButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(66),
                ),
                backgroundColor: Color(0xff4141A4)),
            onPressed: () {
              setState(() {
                isAplied = !isAplied;
              });
            },
            child: Text(
              'Apply for job',
              style: buttonTextStyle,
            ),
          ),
        ),
      ),
    );
  }

  Widget cancelButton() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 41),
        child: Container(
          width: 150,
          height: 45,
          child: TextButton(
            style: TextButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(66),
                ),
                backgroundColor: Color(0xffFD4F56)),
            onPressed: () {
              setState(() {
                isAplied = ! isAplied;
              });
            },
            child: Text(
              'Cancel Apply',
              style: buttonTextStyle,
            ),
          ),
        ),
      ),
    );
  }

  Widget messageApplied(){
    return Container(
      padding: EdgeInsets.only(top: 9, left: 24, right: 24, bottom: 9),
      margin: EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: Color(0xffECEDF1),
        borderRadius: BorderRadius.circular(49)
      ),
      child: Text(
        'You have applied this job and the \nrecruiter will contact you',
        style: TextStyle(
          color: Color(0xffA2A6B4),
          fontFamily: 'Poppins',
          fontSize: 12,
        ),
        textAlign: TextAlign.center,),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
              child: Column(
                children: [
                  SizedBox(height: 60),
                  isAplied ? messageApplied() : SizedBox(),
                  Image.asset(
                    'assets/images/company_google.png',
                    width: 50,
                    height: 52,
                  ),
                  SizedBox(height: 20),
                  Text('Front-End Developer', style: jobApplyTitle),
                  SizedBox(height: 2),
                  Text('Google, Inc • Jakarta', style: subtitleCompany),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('About the jobAbout the job',
                            style: requirementTitleTextStyle),
                        SizedBox(height: 16),
                        Row(
                          children: [
                            Image.asset(
                              'assets/images/dot.png',
                              width: 10,
                            ),
                            SizedBox(width: 8),
                            Text('Full-Time On Site',
                                style: requirementTextStyle)
                          ],
                        ),
                        SizedBox(height: 16),
                        Row(
                          children: [
                            Image.asset(
                              'assets/images/dot.png',
                              width: 10,
                            ),
                            SizedBox(width: 8),
                            Text('Start at \$ 18,000 per month',
                                style: requirementTextStyle)
                          ],
                        ),
                        SizedBox(height: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Qualifications',
                                style: requirementTitleTextStyle),
                            SizedBox(height: 16),
                            Row(
                              children: [
                                Image.asset(
                                  'assets/images/dot.png',
                                  width: 10,
                                ),
                                SizedBox(width: 8),
                                Text(
                                    "Candidate must possess at least a Bachelor's Degree.",
                                    style: requirementTextStyle)
                              ],
                            ),
                            SizedBox(height: 16),
                            Row(
                              children: [
                                Image.asset(
                                  'assets/images/dot.png',
                                  width: 10,
                                ),
                                SizedBox(width: 8),
                                Text(
                                    "Have an excellent time management, \ngood at organized and details",
                                    style: requirementTextStyle)
                              ],
                            ),
                            SizedBox(height: 16),
                            Row(
                              children: [
                                Image.asset(
                                  'assets/images/dot.png',
                                  width: 10,
                                ),
                                SizedBox(width: 8),
                                Text(
                                    "Able to use Microsoft Office and Google based service.",
                                    style: requirementTextStyle)
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Responsibilities',
                                style: requirementTitleTextStyle),
                            SizedBox(height: 16),
                            Row(
                              children: [
                                Image.asset(
                                  'assets/images/dot.png',
                                  width: 10,
                                ),
                                SizedBox(width: 8),
                                Text(
                                    "Initiate and promote any programs, events, \ntraining, or activities.",
                                    style: requirementTextStyle)
                              ],
                            ),
                            SizedBox(height: 16),
                            Row(
                              children: [
                                Image.asset(
                                  'assets/images/dot.png',
                                  width: 10,
                                ),
                                SizedBox(width: 8),
                                Text(
                                    "Assessing and anticipating needs and \ncollaborate with Division.",
                                    style: requirementTextStyle)
                              ],
                            ),
                          ],
                        ),
                        isAplied ? cancelButton() : applyButton(),
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 10, bottom: 25),
                            child: Text(
                              'Message Recruiter',
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            
          ),
        ),
      ),
    );
  }
}
