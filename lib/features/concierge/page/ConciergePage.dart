import 'package:concierge/Utils/Navigator.dart';
import 'package:concierge/components/ClipImageView.dart';
import 'package:concierge/components/ItemGridView.dart';
import 'package:concierge/features/concierge/viewmodel/ConciergeViewModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ConciergePage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => _ConciergePageState();

}

class _ConciergePageState extends State<ConciergePage> {
  ConciergeViewModel _viewModel = ConciergeViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Concierge",
          style: TextStyle(color: Colors.white)
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigation.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              ClipImageView("Ongoing Promo", this._viewModel.promos),
              ItemGridView("Beauty & Spa", this._viewModel.beauty),
              ClipImageView("", this._viewModel.news),
              ItemGridView("My Help", this._viewModel.helps),
            ],
          ),
        ),
      ),
    );
  }

}