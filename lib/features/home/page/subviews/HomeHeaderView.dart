import 'package:concierge/style/AssetColors.dart';
import 'package:flutter/cupertino.dart';

class HomeHeaderView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
        aspectRatio: 2 / 1.5,
        child:  Container(
            color: AssetColors.primaryColor,
            child: SafeArea(
              child: Stack(
                children: [
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Image.asset("assets/images/header_icon.png"),
                  )
                ],
              ),
            )
        )
    ); // Header Background,
  }
}