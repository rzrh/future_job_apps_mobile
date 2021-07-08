import 'package:flutter/material.dart';
import 'package:future_job/theme.dart';
import 'package:future_job/widgets/job_posted.dart';

class SecondHomePage extends StatelessWidget {
  final String jobTitleHome;
  final String imageUrl;

  SecondHomePage({required this.jobTitleHome, required this.imageUrl});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
                  child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    ClipRRect(
                      borderRadius:
                          BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
                      child: Container(
                          width: double.infinity,
                          height: 270,
                          child: Image.asset(
                            imageUrl,
                            fit: BoxFit.cover,
                          )),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 180, left: 24, right: 24),
                      child: Text(
                        jobTitleHome,
                        style: jobTitle,
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 24, top: 215, right: 24),
                      child: Text('12,309 available', style: jobSubTitle),
                    )
                  ],
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20, left: 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Big Companies',
                            style: TextStyle(
                                color: Color(0xff272C2F),
                                fontFamily: 'Poppins',
                                fontSize: 14)),
                        SizedBox(height: 16),
                        Column(
                          children: [
                            JobPosted(
                              companyName: 'Google',
                              jobName: 'Front-End Developer',
                              imageUrl: 'assets/images/company_google.png',
                            ),
                            JobPosted(
                              companyName: 'Instagram',
                              jobName: 'Back-End Developer',
                              imageUrl: 'assets/images/company_instagram.png',
                            ),
                            JobPosted(
                              companyName: 'Facebook',
                              jobName: 'Fullstack Web Developer',
                              imageUrl: 'assets/images/company_facebook.png',
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20, left: 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'New Startups',
                          style: TextStyle(
                              color: Color(0xff272C2F),
                              fontFamily: 'Poppins',
                              fontSize: 14),
                        ),
                        SizedBox(height: 16),
                        JobPosted(
                          companyName: 'Google',
                          jobName: 'Web Design',
                          imageUrl: 'assets/images/company_google.png',
                        ),
                        JobPosted(
                          companyName: 'Facebook',
                          jobName: 'Front-End Developer',
                          imageUrl: 'assets/images/company_facebook.png',
                        ),
                        JobPosted(
                          companyName: 'Instagram',
                          jobName: 'Web Design',
                          imageUrl: 'assets/images/company_instagram.png',
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
