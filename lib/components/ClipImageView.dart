import 'package:concierge/style/AssetColors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ClipImageView extends StatelessWidget {
  String _title;
  List<String> _items = [];

  ClipImageView(this._title, this._items);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          margin: EdgeInsets.only(
              left: 16,
              right: 16,
              bottom: 8,
              top: this._title.isEmpty ? 0 : 16
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                this._title,
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

        AspectRatio(
          aspectRatio: 2 / 1,
          child: ListView.builder(
              itemCount: _items.length,
              padding: const EdgeInsets.only(left: 8, right: 8),
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                    elevation: 3,
                    margin: EdgeInsets.all(8),
                    semanticContainer: true,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)
                    ),
                    child: _items[index].startsWith("assets") ?
                    Image.asset(_items[index], fit: BoxFit.fitWidth) :
                    Image.network(_items[index], fit: BoxFit.fitWidth)

                );
              }
          ),
        )
      ],
    );
  }

}