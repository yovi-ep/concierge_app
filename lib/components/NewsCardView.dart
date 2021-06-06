import 'package:concierge/style/AssetColors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewsCardView extends StatelessWidget {
  final String _url;
  final String _title;
  final String _description;

  NewsCardView(this._url, this._title, this._description);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 1.1,
      child: Card(
        elevation: 3,
        margin: EdgeInsets.all(8),
        semanticContainer: true,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8)
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
                child: Image.network(
                  this._url,
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.center,
                )
            ),

            Padding(
              padding: EdgeInsets.only(left: 16, top: 8, right: 16),
              child: Text(
                this._title,
                textAlign: TextAlign.start,
                maxLines: 1,
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: AssetColors.fontColorPrimary
                ),
              ),
            ),


            Padding(
              padding: EdgeInsets.only(left: 16, bottom: 16, right: 16),
              child: Text(
                this._description,
                textAlign: TextAlign.start,
                maxLines: 2,
                style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.normal,
                    color: AssetColors.fontColorSecondary
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}