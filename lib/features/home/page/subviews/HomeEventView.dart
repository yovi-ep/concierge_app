import 'package:concierge/style/AssetColors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeEventView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          margin: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "Events",
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
          aspectRatio: 1.7 / 1,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Padding(
                padding: const EdgeInsets.all(8),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network("https://i1.wp.com/9to5mac.com/wp-content/uploads/sites/6/2021/06/WWDC-2021-event-page-9to5mac.jpg?w=2500&quality=82&strip=all&ssl=1"),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network("https://i2.wp.com/i.gadgets360cdn.com/large/google_io_2021_image_1621259466371.jpg?ssl=1"),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}