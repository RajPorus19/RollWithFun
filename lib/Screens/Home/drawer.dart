import 'package:flutter/material.dart';
import 'package:newApp/Services/auth.dart';

final AuthService _auth = AuthService();

Drawer homeDrawer = Drawer(
  child: Center(
    child: ListView(
      shrinkWrap: true,
      padding: EdgeInsets.fromLTRB(80, 0, 80, 0),
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text("Feed"),
            Icon(Icons.dashboard)
          ]
        ),
        SizedBox(height:20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text("Messages"),
            Icon(Icons.message)
          ]
        ),
        SizedBox(height:20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text("Shop"),
            Icon(Icons.attach_money)
          ]
        ),
        SizedBox(height:20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text("Settings"),
            Icon(Icons.settings)
          ]
        ),
        RaisedButton(onPressed: ()async{
          _auth.signOut();
        },
        child: Text("Logout"),)
      ],
    ),
  ),
);
