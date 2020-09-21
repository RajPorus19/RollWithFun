import 'package:flutter/material.dart';
import 'package:newApp/Models/event.dart';
import 'package:newApp/Shared/colors.dart';
import 'package:newApp/Shared/textStyle.dart';

class DetailedEvent extends StatelessWidget {
  
  final Event event;
  DetailedEvent({Key key, @required this.event}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(event.name,
        style:  titleStyle),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child:Column(
          children: <Widget>[
          SizedBox(height: 20,),
          Center(
            child: Container(
            width: 350,
            height: 450,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(event.photo),
                fit: BoxFit.cover
              ),
            boxShadow: [BoxShadow(color: Colors.grey, offset: Offset(-4, 4), blurRadius: 4.0, spreadRadius: 1.0)],
            borderRadius: BorderRadius.circular(25),
            ),
          ),
          ),
          SizedBox(height: 30,),
          Container(
              child: Row(children: <Widget>[ 
          SizedBox(width: 30,),

                  Icon(Icons.map,
                  color: Colors.blue,),
          SizedBox(width: 30,),

                  Text(event.location,
                  style: normalTextStyle,),
                ],
              ),
            ),
          SizedBox(height:20),
          Container(
              child: Row(children: <Widget>[
          SizedBox(width: 30,),

                  Icon(Icons.calendar_today,
                  color: Colors.blue,),
          SizedBox(width: 30,),

                  Text(event.date,
                  style: normalTextStyle),
                ],
              ),
            ),
          SizedBox(height:20),

          Container(
              child: Row(children: <Widget>[
          SizedBox(width: 30,),

                  Icon(Icons.face,
                  color: Colors.blue,),
          SizedBox(width: 30,),

                  Text(event.creatorName,
                  style: normalTextStyle),

      
                ],
              ),
            ),
            SizedBox(height:20),
            Text("Description :",
            style: TextStyle(
              color: Colors.blue,
              fontFamily: 'Oswald',
              fontSize: 30,
            )),
            Container(
              padding: EdgeInsets.all(20),
              child:  Text(event.description,
              style: normalTextStyle),
            ),
             
            SizedBox(height:10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                RaisedButton(
                  onPressed: (){},
                  child: Text("I'm in",
                  style: TextStyle(color: white),),
                   elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
              ),
              color: Colors.lightBlue,
                ),
                RaisedButton(
                  onPressed: (){},
                  child: Text("Ask for more details",
                  style: TextStyle(color: white),),
                   elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
              ),
              color: Colors.lightBlue,
                ),
                RaisedButton(
                  onPressed: (){},
                  child: Text("Go !",
                  style: TextStyle(color: white),),
                   elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
              ),
              color: Colors.lightBlue,
                ),
              ],
            ),
            SizedBox(height:20),
          ],
        ),
      ),
    );
  }
}