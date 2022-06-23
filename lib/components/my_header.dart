import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constant.dart';
import 'custom_clip.dart';

class MyHeader extends StatelessWidget {
  final String imageName;
  final String textTop;
  final String textBottom;

  const MyHeader({Key? key, required this.imageName, required this.textTop, required this.textBottom}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: MyCustomClip(),
      child: Container(
        padding: EdgeInsets.only(left: 40, top: 50, right: 20),
        height: 350.0,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomRight,
                colors: [Color(0xFF3383CD), Color(0xFF11249F)]
            ),
            image: DecorationImage(
                image: AssetImage("assets/images/virus.png")
            )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: kDefaultPadding),
            Expanded(child: Stack(
              children: [
                SvgPicture.asset(
                  imageName,
                  width: 230,
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.topCenter,
                ),
                Positioned(
                    top:20.0,
                    left:140.0,
                    child: Text(
                      "$textTop\n$textBottom",
                      style: kHeadingTextStyle.copyWith(color: Colors.white),
                    )
                ),
                Container()
              ],
            ))
          ],
        ),
      ),
    );
  }
}
