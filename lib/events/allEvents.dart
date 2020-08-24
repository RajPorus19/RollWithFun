
import 'package:flutter/material.dart';
import 'package:rollerApp/Shared/colors.dart';
import 'package:rollerApp/Shared/textStyle.dart';
import 'package:rollerApp/DeleteThisAfter/users.dart';
import 'package:rollerApp/events/detailedEvent.dart';


class AllEvents extends StatelessWidget {

  Opacity transparentText(String string) => Opacity(
              opacity: 0.5,
              child : Text(string,
              style: eventsText,),
  );

  Widget eventCard(BuildContext context,Event event){
    return InkWell(
      onTap: (){
        Navigator.push(context, new MaterialPageRoute(
        builder: (context) => DetailedEvent(event: event,)));
      },
      child: Container(
        width: 400,
        height: 100,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(event.photo),
            fit: BoxFit.cover
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            transparentText(event.name),
            transparentText(event.location),
            transparentText(event.date),
          ],
        ),
      ),
    );
  }

  Widget event(BuildContext context,List<Event> events){
    List<Widget> eventColumn = new List<Widget>();
    for(Event item in events){
        eventColumn.add(eventCard(context,item));
        eventColumn.add(SizedBox(height: 20,));
    }
    return new Column(children: eventColumn);
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: textBgColor,
      appBar: AppBar(
        backgroundColor: black,
        title: Text("All events",// i18n
        style: TextStyle(
          fontFamily: "Oswald",
          color: amber,
        ),), 
        centerTitle: true,
      ),
      body: SingleChildScrollView(
              child: Column(
          
          children: <Widget>[
            SizedBox(height:25),
            Center(child: Text('Here is all the events', // i18n
            style: normalTextStyle,),),
            SizedBox(height:30),
            event(context,latestEventsList)
          ],
        ),
      ),
    );
  }
}