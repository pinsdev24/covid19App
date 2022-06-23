import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppbarBuilder extends StatelessWidget {
  const AppbarBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      actions: [
        IconButton(
            onPressed: (){},
            icon: SvgPicture.asset("assets/icons/menu.svg")
        )
      ],
    );
  }
}
