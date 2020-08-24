import 'package:flutter/material.dart';
import 'package:rollerApp/Shared/app_localizations.dart';
import 'package:rollerApp/Shared/buttons.dart';
import 'package:rollerApp/Shared/carousels.dart';
import 'package:rollerApp/Shared/colors.dart';
import 'package:rollerApp/Shared/textStyle.dart';
import 'package:rollerApp/events/allEvents.dart';
import 'package:provider/provider.dart';
import 'package:geolocator/geolocator.dart';

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {

  //Dev test vars for caroussel

  int photoIndex = 0;



  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: textBgColor,
      body: Column(
        children: <Widget>[
          SizedBox(height: 40,),
          Text(AppLocalizations.of(context).translate("Latest events"),
          style: homeText,
          ),
          SizedBox(height: 20,),
          eventCarousel(300.0,150.0),
          RaisedButton(
            onPressed: (){
              Navigator.push(context, new MaterialPageRoute(
                builder: (context)=> AllEvents()));
            },
            color: black,
            child: Text(AppLocalizations.of(context).translate("See all"), // i18n
            style: TextStyle(
              fontFamily: "Oswald",
              color: amber,
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: Consumer<Position>(builder: (context,position,widget){
        return (position != null) ? mapButton(context,position) : mapButtonDisabled(context);
      })
    );
  }
}


