//All the text styling

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newApp/Shared/colors.dart';

TextStyle normalTextStyle = TextStyle(
  color: black,
  fontFamily: 'Oswald',
  fontSize: 20,
);

TextStyle titleStyle = TextStyle(
  fontFamily: 'Oswald',
  color: white,
  fontSize: 30,
);

TextStyle homeText = TextStyle(
  fontFamily: 'Oswald',
  color: black,
  fontSize: 30,
  shadows: <Shadow>[
      Shadow(
        offset: Offset(2, 2),
        blurRadius: 3.0,
        color: Colors.grey[300],

      ),
    ],
);

TextStyle eventsText = TextStyle(
  fontFamily: 'Oswald',
  color: white,
  backgroundColor: mainColor,
  fontSize: 20,
);

