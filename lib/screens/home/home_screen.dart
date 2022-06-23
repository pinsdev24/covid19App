import 'package:covid19app/components/my_header.dart';
import 'package:covid19app/screens/details/info_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../constant.dart';
import '../../components/counter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => InfoScreen()));
              },
              icon: SvgPicture.asset("assets/icons/menu.svg")
          )
        ],
      ),
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        controller: ScrollController(keepScrollOffset: true),
        child: Column(
          children: [
            MyHeader(imageName: "assets/icons/Drcorona.svg", textTop: "All you need", textBottom: "is stay at Home"),
            Container(
              margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding, vertical: kDefaultPadding/2),
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25.0),
                border: Border.all(color: Color(0xFFE5E5E5)),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  SvgPicture.asset("assets/icons/maps-and-flags.svg"),
                  SizedBox(width: 10,),
                  Expanded(
                    child: DropdownButton(
                      isExpanded: true,
                      value: "Cameroon",
                      underline: SizedBox(),
                      icon: SvgPicture.asset("assets/icons/dropdown.svg"),
                      items: ['Cameroon', 'Nigeria', 'Canada', 'Rwanda'].map<DropdownMenuItem<String>>((String value) => DropdownMenuItem<String>(value: value, child: Text(value),)).toList(),
                      onChanged: (value) {},
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: kDefaultPadding,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "Case Update\n",
                              style: kTitleTextStyle,
                            ),
                            TextSpan(
                              text: "Newest Update September 15",
                              style: TextStyle(
                                color: kTextLightColor
                              ),
                            )
                          ]
                        )
                      ),
                      TextButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => InfoScreen()));
                        },
                        child: Text("see details", style: TextStyle(
                          color: kPrimaryColor,
                          fontWeight: FontWeight.w600
                        )),
                      )
                    ],
                  )
                ],
              )
            ),
            SizedBox(height: kDefaultPadding,),
            Container(
              margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              padding: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(2, 6),
                    blurRadius: 40.0,
                    color: kShadowColor
                  )
                ]
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Counter(title: "Infected", number: 1024, color: kInfectedColor),
                  Counter(title: "Deaths", number: 35, color: kDeathColor),
                  Counter(title: "Recovered", number: 989, color: kRecoverColor),
                ],
              ),
            ),
            SizedBox(height: kDefaultPadding),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Spread of virus", style: kTitleTextStyle,),
                  TextButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => InfoScreen()));
                    },
                    child: Text("See Details", style: TextStyle(
                        color: kPrimaryColor,
                        fontWeight: FontWeight.w600
                    )),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20.0),
              height: 180,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0,10),
                    blurRadius: 40.0,
                    color: kShadowColor
                  )
                ]
              ),
              child: Image.asset(
                "assets/images/map.png",
                fit: BoxFit.contain,
              ),
            )
          ],
        ),
      ),
    );
  }
}