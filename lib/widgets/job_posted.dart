import 'package:flutter/material.dart';
import 'package:future_job/pages/detail_page.dart';
import 'package:future_job/theme.dart';

class JobPosted extends StatelessWidget {
  final String imageUrl;
  final String jobName;
  final String companyName;

  JobPosted(
      {required this.imageUrl,
      required this.jobName,
      required this.companyName});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => DetailPage()));
      },
          child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            imageUrl,
            width: 40,
            height: 42,
          ),
          Expanded(
                    child: Padding(
              padding: const EdgeInsets.only(left: 20, top: 2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    jobName,
                    style: titleCompany,
                  ),
                  Text(
                    companyName,
                    style: subtitleCompany,
                  ),
                  SizedBox(height: 15),
                  Divider(
                    color: Color(0xffECEDF1),
                    thickness: 1,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
