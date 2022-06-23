import 'package:flutter/material.dart';

import '../constant.dart';

class SymtomCard extends StatelessWidget {
  final String image;
  final String title;
  const SymtomCard({Key? key, required this.image, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Container(
        padding: EdgeInsets.all(5.0),
        child: Column(
          children: [
            Image.asset(
              image,
              fit: BoxFit.contain,
            ),
            Text(title, style: TextStyle(
                color: kTextLightColor,
                fontSize: 18,
                fontWeight: FontWeight.w700

            ))
          ],
        ),
      ),
    );
  }
}
