import 'package:flutter/material.dart';
import 'package:roll_with_fun/language.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          DemoLocalizations.of(context).getText('appName'),
        ),
        centerTitle: true,
      ),
      body: 
        Flex(
          direction: Axis.vertical,
          children: <Widget>[
            Text(DemoLocalizations.of(context).getText('emailHint')),
            Text(DemoLocalizations.of(context).getText('emailHint2')),
            Text(DemoLocalizations.of(context).getText('passwordHint')),
            Text(DemoLocalizations.of(context).getText('passowrdHint2')),
            Text(DemoLocalizations.of(context).getText('loginText')),
          ],
        ),
    );
  }
}

