import 'package:flutter/material.dart';
import 'package:gift_genie/auth/loginPage.dart';
import 'package:gift_genie/auth/recoverPasswdPage.dart';
import 'package:gift_genie/auth/registerPage.dart';
import 'bottomNavigation.dart';

//tells main to run MyApp class
void main() => runApp(MyApp());

//the my app class
class MyApp extends StatelessWidget {
  @override
  //everything in flutter comes from a widget
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Gift Genie', //im unclear of what this is. page title?
      home: LoginPage(),
      routes: <String, WidgetBuilder> {
        "HomePage":(_) => BottomNavigationWidget(),
        "Registration":(_) => RegisterPage(),
        "RecoverPasswd":(_) => RecoverPage(),
      },
    );
  }
}
