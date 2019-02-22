import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:gift_genie/auth/state.dart';
import 'package:gift_genie/auth/state_widget.dart';
import 'package:gift_genie/utils/settings_button.dart';


class ProfilePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ProfilePageState();
}

class ProfilePageState extends State<ProfilePage> {

  StateModel _appState;

  @override
  Widget build(BuildContext context) {

    _appState = StateWidget.of(context).state;

    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: _buildButton(),
    );
  }

  //Log Out Button
  Align _buildButton() {

    return Align(
      //crossAxisAlignment: CrossAxisAlignment.center,
      child: SizedBox(
        height: 45.0,
          width: 150.0,
          child :SettingsButton(
            Icons.exit_to_app,
            'Log out',
            () async {
              await StateWidget.of(context).signOutOfGoogle();
              if(StateWidget.of(context).state.isSignedIn == false) {
                Navigator.of(context).pushNamedAndRemoveUntil("/LoginPage", (Route<dynamic> route) => false);
              }
            },
          )
      ),
    );
  }

  void logOutOfApp() {

  }
}