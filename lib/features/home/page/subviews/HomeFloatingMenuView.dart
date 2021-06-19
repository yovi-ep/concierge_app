import 'package:concierge/Utils/GlobalFunction.dart';
import 'package:concierge/Utils/Navigator.dart';
import 'package:concierge/components/IconTitleVertical.dart';
import 'package:concierge/features/bill/page/BillPage.dart';
import 'package:concierge/features/concierge/page/ConciergePage.dart';
import 'package:concierge/features/profile/page/ProfilePage.dart';
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
                IconTitleVertical("Concierge", "assets/images/concierge.png", () => this._navigator(context, 1)),
                IconTitleVertical("Smart Home", "assets/images/smart_home.png", () => this._navigator(context, 2)),
                IconTitleVertical("My Bill", "assets/images/bill.png", () => this._navigator(context, 3)),
                IconTitleVertical("My Profile", "assets/images/my_profile.png", () => this._navigator(context, 4)),
              ]
          ),
        )
    );
  }

  _navigator(BuildContext context, int flag) {
    switch (flag) {
      case 1:
        Navigation.push(context, ConciergePage());
        break;
      case 2:
        Toast(context: context, message: "Premium Feature");
        break;
      case 3:
        Navigation.push(context, BillPage());
        break;
      case 4:
        Navigation.push(context, ProfilePage());
        break;
    }
  }
}