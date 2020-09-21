import 'package:flutter/material.dart';
import 'package:newApp/Screens/Authenticate/register.dart';
import 'package:newApp/Screens/Authenticate/sign_in.dart';

class Authenticate extends StatefulWidget {
  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  // bool to toggle sign in and register
  bool showSignIn = true;
  // function to toggle
  void toggleView(){
    setState(() {
      showSignIn = !showSignIn;
    });
  }
  @override
  Widget build(BuildContext context) {
    if(showSignIn){
      return SignIn(toggleView: toggleView);
    }else{
      return Register(toggleView: toggleView);
    }
  }
}
