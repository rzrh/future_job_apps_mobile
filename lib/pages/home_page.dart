import 'package:flutter/material.dart';
import 'package:future_job/theme.dart';
import 'package:future_job/widgets/categories.dart';
import 'package:future_job/widgets/job_posted.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 20, left: 24, right: 24),
          child: Container(
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Howdy', style: titleTextStyle),
                    Text('Jason Powell', style: subtitleTextStyle)
                  ],
                ),
                Spacer(),
                Image.asset('assets/images/user_pic.png', width: 48)
              ],
            ),
          ),
        ),
      );
    }

    Widget body() {
      return Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 24),
              child: Text('Hot Categories',
                  style: TextStyle(
                      color: Color(0xff272C2F),
                      fontFamily: 'Poppins',
                      fontSize: 14)),
            ),
            SizedBox(height: 16),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(left: 24),
                child: Row(
                  children: [
                    CategoriesJob(
                      text: 'Web Developer',
                      image: 'assets/images/category1.png',
                    ),
                    SizedBox(width: 16),
                    CategoriesJob(
                      text: 'Mobile Developer',
                      image: 'assets/images/category2.png',
                    ),
                    SizedBox(width: 16),
                    CategoriesJob(
                      text: 'App Designer',
                      image: 'assets/images/category3.png',
                    ),
                    SizedBox(width: 16),
                    CategoriesJob(
                      text: 'Content Writer',
                      image: 'assets/images/category4.png',
                    ),
                    SizedBox(width: 16),
                    CategoriesJob(
                      text: 'Video Grapher',
                      image: 'assets/images/category5.png',
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 24, right: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Just Posted', style: TextStyle(color: Color(0xff272C2C), fontFamily: 'Poppins', fontSize: 14)),
                  SizedBox(height: 16),
                  JobPosted(
                    imageUrl: 'assets/images/company_google.png',
                    jobName: 'Front-End Developer',
                    companyName: 'Google',
                  ),
                  JobPosted(
                    imageUrl: 'assets/images/company_instagram.png',
                    jobName: 'UI Designer',
                    companyName: 'Instagram',
                  ),
                  JobPosted(
                    imageUrl: 'assets/images/company_facebook.png',
                    jobName: 'Data Scientist',
                    companyName: 'Facebook',
                  ),
                ],
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(top: 30),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          unselectedItemColor: Color(0xffB3B5C4),
          selectedItemColor: Color(0xff272C2F),
          currentIndex: 0,
          iconSize: 22,
          elevation: 0,
          items: [
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/images/navbar1.png')
              ),
              label: '',
              ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/images/navbar2.png')
              ),
              label: '',
              ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/images/navbar3.png')
              ),
              label: '',
              ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/images/navbar4.png')
              ),
              label: '',
              ),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          header(),
          body(),
        ],
      ),
    );
  }
}
