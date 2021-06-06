import 'package:concierge/features/home/page/subviews/HomeFloatingMenuView.dart';
import 'package:concierge/features/home/page/subviews/HomeHeaderView.dart';
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
      body: SingleChildScrollView(
          child: Stack(
            children: [
              HomeHeaderView(),
              SafeArea(
                  child: Column(
                    children: [
                      HomeFloatingMenuView(),
                      HomeFloatingMenuView(),
                      HomeFloatingMenuView(),
                      HomeFloatingMenuView(),
                      HomeFloatingMenuView(),
                      HomeFloatingMenuView(),
                      HomeFloatingMenuView(),
                      HomeFloatingMenuView(),
                      HomeFloatingMenuView(),
                      HomeFloatingMenuView(),
                      HomeFloatingMenuView(),
                      HomeFloatingMenuView(),
                      HomeFloatingMenuView(),
                    ],
                  )
              )
            ],
          )
      ),
    );
  }
}
