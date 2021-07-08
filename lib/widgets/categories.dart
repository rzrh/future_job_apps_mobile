import 'package:flutter/material.dart';
import 'package:future_job/pages/second_page.dart';

class CategoriesJob extends StatelessWidget {
  final String text;
  final String image;

  CategoriesJob({required this.text, required this.image});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => SecondHomePage(
          jobTitleHome: text,
          imageUrl: image,
        )));
      },
          child: Container(
        width: 100,
        height: 150,
        child: Align(
          alignment: Alignment.bottomLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 16, bottom: 16, right: 10),
            child: Text(
              text,
              style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                  color: Color(0xffFFFFFF)),
            ),
          ),
        ),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(image))),
      ),
    );
  }
}
