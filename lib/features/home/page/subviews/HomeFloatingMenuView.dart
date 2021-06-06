import 'package:concierge/components/IconTitleVertical.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeFloatingMenuView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
        margin: const EdgeInsets.only(left: 16, right: 16, top: 16),
        color: Colors.white,
        elevation: 3,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8)
        ),
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconTitleVertical("Concierge", "assets/images/concierge.png", () => null),
                IconTitleVertical("Smart Home", "assets/images/smart_home.png", () => null),
                IconTitleVertical("My Bill", "assets/images/bill.png", () => null),
                IconTitleVertical("My Care", "assets/images/my_card.png", () => null),
              ]
          ),
        )
    );
  }

}