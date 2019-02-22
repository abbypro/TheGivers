import 'package:firebase_auth/firebase_auth.dart';

enum LogType {
  email,
  facebook,
  google,
  twitter,
  unset,
}

class StateModel {
  bool isLoading;
  bool isSignedIn;
  LogType type;
  FirebaseUser user;

  StateModel({
    this.isLoading = false,
    this.isSignedIn = false,
    this.type = LogType.unset,
    this.user = null,
  });
}