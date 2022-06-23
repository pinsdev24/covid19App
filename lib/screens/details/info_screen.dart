import 'package:covid19app/components/my_header.dart';
import 'package:covid19app/components/prevent_card.dart';
import 'package:covid19app/components/symptoms.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constant.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: (){},
            icon: SvgPicture.asset("assets/icons/menu.svg")
          )
        ],
      ),
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MyHeader(imageName: "assets/icons/coronadr.svg", textTop: "Get to know", textBottom: "About Covid 19"),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Symptoms", style: kTitleTextStyle),
                  SizedBox(height: kDefaultPadding),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SymtomCard(image: "assets/images/headache.png", title: "Headache"),
                      SymtomCard(image: "assets/images/caugh.png", title: "Cough"),
                      SymtomCard(image: "assets/images/fever.png", title: "Fever"),
                    ],
                  ),
                  SizedBox(height: kDefaultPadding),
                  Text("Prevention", style: kTitleTextStyle),
                  SizedBox(height: kDefaultPadding),
                  PreventCard(
                    image: "assets/images/wear_mask.png",
                    title: "Wear face mask",
                    text: "Since the stat of the coronavirus outbreak some place have fully embraced wearing face masks"
                  ),
                  PreventCard(
                      image: "assets/images/wash_hands.png",
                      title: "Wash your hands",
                      text: "Since the stat of the coronavirus outbreak some place have fully embraced wearing face masks"
                  ),
                  SizedBox(height: 50),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
