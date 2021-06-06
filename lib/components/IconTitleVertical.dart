import 'package:concierge/style/AssetColors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IconTitleVertical extends StatelessWidget {
  final String title;
  final String icon;
  final Function() onTap;

  IconTitleVertical(this.title, this.icon, this.onTap);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: InkWell(
            borderRadius: BorderRadius.circular(8),
            onTap: this.onTap,
            child: Padding(
                padding: EdgeInsets.all(8),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      width: 42,
                      height: 40,
                      child: Image.asset(this.icon),
                    ),
                    SizedBox(height: 11),
                    Text(
                      this.title,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 11,
                        color: AssetColors.fontColorPrimary
                      ),
                    ),
                  ],
                )
            )
        )
    );
  }
}