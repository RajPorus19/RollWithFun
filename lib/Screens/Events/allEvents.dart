
import 'package:flutter/material.dart';
import 'package:newApp/Shared/colors.dart';
import 'package:newApp/Shared/textStyle.dart';
import 'package:newApp/Models/event.dart';
import 'detailedEvents.dart';

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
        width: 350,
        height: 150,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(event.photo),
            fit: BoxFit.cover
            
          ),
            boxShadow: [BoxShadow(color: Colors.grey, offset: Offset(-4, 4), blurRadius: 4.0, spreadRadius: 1.0)],
            borderRadius: BorderRadius.circular(25),
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
      backgroundColor: white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("All events",// i18n
        style: TextStyle(
          fontFamily: "Oswald",
          color: white,
        ),), 
        centerTitle: true,
      ),
      body:SingleChildScrollView(
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