import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    Key? key,
    required this.image,
    required this.title,
    required this.subTitle,
  }) : super(key: key);
  final String image;
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 250,
        width: 150,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              10,
            ),
            color: Colors.black),
        child: Column(
          children: [
            Image.asset(image),
            Spacer(),
            Text(
              title,
              style: TextStyle(color: Colors.white),
            ),
            Text(
              subTitle,
              style: TextStyle(color: Colors.white70),
            ),
          ],
        ),
      ),
    );
  }
}
