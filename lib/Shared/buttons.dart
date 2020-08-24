import 'package:flutter/material.dart';
import 'package:rollerApp/Shared/colors.dart';
import 'package:rollerApp/Map/map.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:geolocator/geolocator.dart';



FloatingActionButton mapButton(BuildContext context,Position postion) => FloatingActionButton(
        backgroundColor: mainColor,
        onPressed: (){
    Navigator.push(context, new MaterialPageRoute(
    builder: (context)=> Map(postion)));
        },
        child: Icon(Icons.navigation,
          color: titleColor,
        )
      );

FloatingActionButton mapButtonDisabled(BuildContext context) => FloatingActionButton(
        backgroundColor: mainColor,
        onPressed: (){
          Fluttertoast.showToast(
        msg: "Please allow location",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: black,
        textColor: white,
        fontSize: 16.0
    );
        },
        child: Icon(Icons.navigation,
          color: Colors.grey,
        )
      );



