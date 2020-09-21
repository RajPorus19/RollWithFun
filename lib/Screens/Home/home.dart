import 'package:flutter/material.dart';
import 'package:newApp/Shared/buttons.dart';
import 'package:provider/provider.dart';
import 'drawer.dart';
import 'package:newApp/Shared/colors.dart';
import 'package:geolocator/geolocator.dart';
import 'package:newApp/Services/app_localizations.dart';
import 'package:newApp/Shared/textStyle.dart';
import 'eventCarousel.dart';
import 'package:newApp/Models/spot.dart';
import 'package:newApp/Screens/Events/allEvents.dart';
import 'package:newApp/Screens/Spots/spotWidgets.dart';
import 'package:newApp/Services/auth.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar:  AppBar(
        elevation: 10,
        title:Text("Roll With Fun"),
        centerTitle: true,
         ), 
                
        
      drawer: homeDrawer,
      backgroundColor: white,
      body: SingleChildScrollView(
              child: Column(
          children: <Widget>[
            SizedBox(height: 20,),
            //THIS IS HOW YOU TRANSLATE TEXTS 
              Text(AppLocalizations.of(context).translate("Latest events"),
              style:homeText,
            ),
            SizedBox(height: 15,),
            eventCarousel(300.0,300.0),
            
            RaisedButton(
              onPressed: (){
                Navigator.push(context, new MaterialPageRoute(
                  builder: (context)=> AllEvents()));
              },
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
              ),
              color: Colors.lightBlue,
              child: Text("See all", // i18n
              style: TextStyle(
                fontFamily: "Oswald",
                color: white,
                ),
              ),
            ),
            Text("Skating spots around you",
              style:homeText,
            ),
            SizedBox(height: 20,),
            sportNearList(context, spotList),
          ],
        ),
      ),

  floatingActionButton: Consumer<Position>(builder: (context,position,widget){
        return (position != null) ? mapButton(context,position) : mapButtonDisabled(context);
      })

    );
  }

 
}
