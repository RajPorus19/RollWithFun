import 'package:flutter/material.dart';

//Color strenght
Map<int, Color> color ={
  50:Color.fromRGBO(85,85,85, .1),
  100:Color.fromRGBO(85,85,85, .2),
  200:Color.fromRGBO(85,85,85, .3),
  300:Color.fromRGBO(85,85,85, .4),
  400:Color.fromRGBO(85,85,85, .5),
  500:Color.fromRGBO(85,85,85, .6),
  600:Color.fromRGBO(85,85,85, .7),
  700:Color.fromRGBO(85,85,85, .8),
  800:Color.fromRGBO(85,85,85, .9),
  900:Color.fromRGBO(85,85,85, 1),
  
  };

//Color hue
MaterialColor black = MaterialColor(0xff000000, color);
MaterialColor blackLight = MaterialColor(0xff585555, color);
MaterialColor white = MaterialColor(0xffffffff, color);
MaterialColor whiteLight = MaterialColor(0xffC7C2C2, color);
MaterialColor amber = MaterialColor(0xffffbf00, color);


//Color used
MaterialColor mainColor = black;
MaterialColor titleColor = amber;
MaterialColor textColor = white;
MaterialColor textBgColor = blackLight;