import 'package:concierge/models/ItemGridViewModel.dart';
import 'package:concierge/style/AssetColors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ItemGridView extends StatelessWidget {
  String _title = "";
  List<ItemGridViewModel> _items = [];

  ItemGridView(this._title, this._items);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          margin: EdgeInsets.only(left: 16, right: 16, bottom: 8, top: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                _title,
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: AssetColors.fontColorPrimary
                ),
              ),
            ],
          ),
        ),

        Container(
            padding: EdgeInsets.all(8),
            child: GridView.count(
              primary: false,
              shrinkWrap: true,
              crossAxisCount: 3,
              scrollDirection: Axis.vertical,
              children: _items.map((e) =>
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Stack(
                        children: [
                          Image.asset(
                            e.pathImage,
                            width: double.infinity,
                            height: double.infinity,
                            fit: BoxFit.fill,
                          ),

                          Container(color: AssetColors.blackTransparent),

                          Positioned(
                            left: 8,
                            bottom: 8,
                            right: 8,
                            child: Text(
                              e.title,
                              textAlign: TextAlign.left,
                              softWrap: true,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500
                              ),
                            )
                          )
                        ],
                      ),
                    ),
                  ),    
              ).toList()
            )
        ),
      ],
    );
  }

}