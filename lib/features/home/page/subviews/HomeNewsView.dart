import 'package:concierge/components/NewsCardView.dart';
import 'package:concierge/style/AssetColors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeNewsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          margin: EdgeInsets.only(left: 16, right: 16, bottom: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "News",
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: AssetColors.fontColorPrimary
                ),
              ),
              Text(
                "Get the lastest updates daily!",
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    color: AssetColors.fontColorSecondary
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
              NewsCardView(
                  'https://akcdn.detik.net.id/community/media/visual/2021/01/17/napoli_169.jpeg?w=700&q=90',
                  "Napoli Bantah Kontak UEFA untuk Gantikan Juventus di Liga Champions",
                  "Napoli menyangkal soal klaim telah menghubungi UEFA untuk menggantikan Juventus di Liga Champions. Begini pernyataan pihak Partenopei."
              ),
              NewsCardView(
                  'https://media-cdn.tripadvisor.com/media/photo-s/0d/7c/59/70/farmhouse-lembang.jpg',
                  "Farmhouse Lembang",
                  "Punya mimpi berlibur ke Eropa? Tak perlu jauh – jauh rasanya menghabiskan waktu dan ongkos untuk bisa menikmati suasana Eropa. Di daerah Lembang terdapat sebuah tempat wisata bernuansa Eropa yang bisa anda jadikan destinasi berlibur anda"
              ),
              NewsCardView(
                  'https://media-cdn.tripadvisor.com/media/photo-w/13/f0/22/f6/photo3jpg.jpg',
                  "Farmhouse Lembang",
                  "Punya mimpi berlibur ke Eropa? Tak perlu jauh – jauh rasanya menghabiskan waktu dan ongkos untuk bisa menikmati suasana Eropa. Di daerah Lembang terdapat sebuah tempat wisata bernuansa Eropa yang bisa anda jadikan destinasi berlibur anda"
              ),
              NewsCardView(
                  'https://media-cdn.tripadvisor.com/media/photo-m/1280/16/a9/33/43/liburan-di-farmhouse.jpg',
                  "Farmhouse Lembang",
                  "Punya mimpi berlibur ke Eropa? Tak perlu jauh – jauh rasanya menghabiskan waktu dan ongkos untuk bisa menikmati suasana Eropa. Di daerah Lembang terdapat sebuah tempat wisata bernuansa Eropa yang bisa anda jadikan destinasi berlibur anda"
              ),
            ],
          ),
        )
      ],
    );
  }

}