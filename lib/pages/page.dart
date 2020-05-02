import 'package:flutter/material.dart';
import 'package:roll_with_fun/language.dart';

class PageTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text(DemoLocalizations.of(context).getText('second_string'))),
    );
  }
}

