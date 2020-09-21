import 'package:flutter/material.dart';
import 'package:newApp/Shared/colors.dart';
import 'package:newApp/Models/spot.dart';

Widget spotCard(Spot spot){
  MaterialColor color = spotColor(spot);
  var _toggle = false;

  return InkWell(
        onTap: (){
          _toggle = _toggle == true ? false : true ;
        },
        child: Container(
          width: 250,
          height: _toggle == false ? 70 : 130,
          decoration: BoxDecoration(
            color: color,
            boxShadow: [BoxShadow(color: Colors.grey, offset: Offset(-4, 4), blurRadius: 4.0, spreadRadius: 1.0)],
            borderRadius: BorderRadius.circular(25),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(spot.name,
              style: TextStyle(color: Colors.white),),
              Text(spot.adress,
              style: TextStyle(color: Colors.white),),
              Row(
                children: <Widget>[
                  Spacer(),
                  Text("19",
                  style: TextStyle(color: white,
                  fontSize: 16),),
                  SizedBox(width:5),
                  Icon(Icons.people, color: white,),
                  Spacer(),
                ]
              ),
            ],
          ),
        ),
      );
}  

MaterialColor spotColor(Spot spot){
  if (spot.skateType == "Slalom") return Colors.blue; 
  else if (spot.skateType == "Freeride") return Colors.red; 
  else if (spot.skateType == "Agressive") return Colors.purple;
  return Colors.orange; 
}

Widget sportNearList(BuildContext context,List<Spot> spots){
    List<Widget> eventColumn = new List<Widget>();
    for(Spot spot in spots){
        eventColumn.add(spotCard(spot));
        eventColumn.add(SizedBox(height: 20,));
    }
    return new Column(children: eventColumn);
  }