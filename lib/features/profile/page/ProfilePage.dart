import 'package:concierge/Utils/Navigator.dart';
import 'package:concierge/features/profile/viewmodel/ProfileViewModel.dart';
import 'package:concierge/style/AssetColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProfilePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ProfilePageState();
  }
}

class _ProfilePageState extends State<ProfilePage> {
  late ProfileViewModel _viewModel;
  final TextEditingController _inName = TextEditingController();
  final TextEditingController _inContact = TextEditingController();

  @override
  void initState() {
    super.initState();
    this._viewModel = ProfileViewModel();

    setState(() {
      this._viewModel.getDeveloperName().then((value) {
        this._inName.text = value;
      });

      this._viewModel.getDeveloperContact().then((value) {
        this._inContact.text = value;
      });
    });

  }

  @override
  void dispose() {
    this._inName.dispose();
    this._inContact.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            "My Profile",
            style: TextStyle(color: Colors.white)
        ),
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigation.pop(context),
        ),
      ),
      backgroundColor: AssetColors.primaryColor,
      body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                Container(
                  width: 150,
                  height: 150,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage("assets/images/yoviep.jpeg"),
                          fit: BoxFit.fill
                      ),
                      border: Border.all(color: Colors.white, width: 4)
                  ),
                ),

                SizedBox(height: 32),

                TextFormField(
                  controller: this._inName,
                  style: TextStyle(
                      color: Colors.white
                  ),
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)
                      ),
                      hintText: 'Write your name here...',
                      labelText: 'Name',
                      labelStyle: TextStyle(
                          color: Colors.white
                      ),
                      hintStyle: TextStyle(
                          color: Colors.white.withAlpha(100)
                      )
                  ),
                ),

                SizedBox(height: 16),

                TextFormField(
                  controller: this._inContact,
                  style: TextStyle(
                      color: Colors.white
                  ),
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)
                      ),
                      hintText: 'Write your contact here...',
                      labelText: 'Contact',
                      labelStyle: TextStyle(
                          color: Colors.white
                      ),
                      hintStyle: TextStyle(
                          color: Colors.white.withAlpha(100)
                      )
                  ),
                ),

                Expanded(child: Container()),

                TextButton(
                  onPressed: () {
                    _viewModel.update(
                        this._inName.value.text,
                        this._inContact.value.text
                    );
                  },
                  child: Text(
                    "Update",
                    style: TextStyle(color: Colors.white),
                  )
                )
              ],
            ),
          )
      ),
    );
  }
}