import 'package:concierge/features/home/page/subviews/HomeEventView.dart';
import 'package:concierge/features/home/page/subviews/HomeFloatingMenuView.dart';
import 'package:concierge/features/home/page/subviews/HomeHeaderView.dart';
import 'package:concierge/features/home/page/subviews/HomeNewsView.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
              child: Column(
                children: [
                  HomeHeaderView(),
                  HomeFloatingMenuView(),
                  SizedBox(height: 24),
                  HomeNewsView(),
                  HomeEventView()
                ],
              )
          ),
        )
    );
  }
}
