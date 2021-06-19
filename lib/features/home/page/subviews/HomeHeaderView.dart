import 'package:concierge/features/profile/viewmodel/ProfileViewModel.dart';
import 'package:concierge/style/AssetColors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeHeaderView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeHeaderState();
  }
}

class _HomeHeaderState extends State<HomeHeaderView> {
  late ProfileViewModel _profileViewModel;
  String _name = "";

  @override
  void initState() {
    super.initState();

    this._profileViewModel = ProfileViewModel();
    setState(() {
      this._profileViewModel.getDeveloperName().then((value) {
        this._name = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
        aspectRatio: 2 / 1.2,
        child: Container(
            color: AssetColors.primaryColor,
            child: SafeArea(
              child: Stack(
                children: [
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Image.asset("assets/images/header_icon.png"),
                  ),

                  Padding(
                    padding: EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(child: Container()),

                        Text("Hai,", style: TextStyle(
                          color: Colors.white,
                          fontSize: 16
                        )),
                        Text(this._name, style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                        )),

                        Expanded(child: Container())
                      ],
                    ),
                  )
                ],
              ),
            )
        )
    );
  }

}