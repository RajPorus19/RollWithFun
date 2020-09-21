import 'package:flutter/material.dart';
import 'package:newApp/Screens/Authenticate/authenticate.dart';
import 'package:newApp/Screens/Authenticate/sign_in.dart';
import 'package:newApp/Screens/Home/home.dart';
import 'package:newApp/Screens/wrapper.dart';
import 'package:provider/provider.dart';
import 'Services/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:newApp/Models/user.dart';
import 'package:newApp/Services/auth.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value: AuthService().user,
      child: MaterialApp(
        home: Wrapper(),
      ),
    );
  }
}