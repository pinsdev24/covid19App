import 'package:flutter/material.dart';

import '../constant.dart';

class Counter extends StatelessWidget {
  final String title;
  final int number;
  final Color color;
  const Counter({Key? key, required this.title, required this.number, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(6.0),
          height: 25.0,
          width: 25.0,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: color.withOpacity(.26)
          ),
          child: Container(
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.transparent,
                  border: Border.all(
                      color: color,
                      width: 2
                  )
              )
          ),
        ),
        SizedBox(height: kDefaultPadding / 2),
        Text("$number", style: TextStyle(
          color: color,
          fontSize: 40,
        ),),
        Text(title, style: kSubTextStyle,)
      ],
    );
  }
}
