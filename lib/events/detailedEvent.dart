import 'package:flutter/material.dart';
import 'package:rollerApp/DeleteThisAfter/users.dart';
import 'package:rollerApp/Shared/colors.dart';
import 'package:rollerApp/Shared/textStyle.dart';

class DetailedEvent extends StatelessWidget {
  
  final Event event;
  DetailedEvent({Key key, @required this.event}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: textBgColor,
      appBar: AppBar(
        backgroundColor: black,
        title: Text(event.name,
        style:  titleStyle),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child:Column(
          children: <Widget>[
          SizedBox(height: 5,),
          Center(
            child: Container(
            width: 400,
            height: 300,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(event.photo),
                fit: BoxFit.cover
              ),
            ),
          ),
          ),
          SizedBox(height: 30,),
          Container(
              child: Row(children: <Widget>[ 
          SizedBox(width: 30,),

                  Icon(Icons.map,
                  color: white,),
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
                  color: white,),
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
                  color: white,),
          SizedBox(width: 30,),

                  Text(event.creatorName,
                  style: normalTextStyle),

      
                ],
              ),
            ),
            SizedBox(height:20),
            Text("Description :",
            style: titleStyle),
            Container(
              padding: EdgeInsets.all(20),
              child:  Text(event.description,
              style: normalTextStyle),
            ),
             
            SizedBox(height:40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RaisedButton(
                  onPressed: null,
                  child: Text("I'm in"),
                ),
                RaisedButton(
                  onPressed: null,
                  child: Text("Ask for more details"),
                ),
                RaisedButton(
                  onPressed: null,
                  child: Text("Go !"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}