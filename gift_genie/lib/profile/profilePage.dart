import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ProfilePageState();
}

class ProfilePageState extends State<ProfilePage> {

  @override
  Widget build(BuildContext context) {
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
      child: SizedBox(
        height: 45.0,
        width: 200.0,
        child: RaisedButton(
          child: Text(
            'Log Out',
            style: Theme.of(context).primaryTextTheme.headline,
          ),
          color: Colors.red,
          onPressed: () {
              Navigator.of(context).pushNamed("LoginPage");
          },
          shape: StadiumBorder(side: BorderSide()),
        ),
      ),
    );
  }
}