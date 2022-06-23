import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constant.dart';

class PreventCard extends StatelessWidget {
  final String image;
  final String title;
  final String text;
  const PreventCard({Key? key, required this.image, required this.title, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: SizedBox(
        height: 160,
        child: Stack(
          alignment: Alignment.centerLeft,
          children: [
            Container(
              height: 136.0,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0,10),
                      color: kShadowColor,
                      blurRadius: 40.0,
                    )
                  ]
              ),
            ),
            Image.asset(image),
            Positioned(
                left: 140,
                child: Container(
                  height: 130,
                  padding: EdgeInsets.symmetric(
                    vertical: 15,
                    horizontal: 20.0
                  ),
                  width: MediaQuery.of(context).size.width - 170,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                            color: kTitleTextColor,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w700
                        ),
                      ),
                      Text(
                        text,
                        style: TextStyle(
                            color: kTextLightColor,
                            fontSize: 12
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: GestureDetector(
                          onTap: (){},
                          child: SvgPicture.asset("assets/icons/forward.svg")
                        ),
                      )
                    ],
                  ),
                )
            )
          ],
        ),
      ),
    );
  }
}
