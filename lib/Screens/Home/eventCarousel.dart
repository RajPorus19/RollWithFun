import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:newApp/Shared/textStyle.dart';
import 'package:newApp/Models/event.dart';
import 'package:newApp/Screens/Events/detailedEvents.dart';

CarouselSlider eventCarousel(width,height) => CarouselSlider(
  options: CarouselOptions(
    height: height,
    autoPlay: true,
    autoPlayInterval: Duration(seconds: 2),
    autoPlayAnimationDuration: Duration(milliseconds: 800),
    autoPlayCurve: Curves.easeInOut,
  ),
  items: latestEventsList.map((event) {
    return Builder(
      builder: (BuildContext context) {
        return InkWell(
            onTap: (){
              Navigator.push(context, new MaterialPageRoute(
                builder: (context) => DetailedEvent(event: event,)));
            },
            child: Container(
            margin: EdgeInsets.only(left: 30, top: 30, right: 30, bottom: 30),
            width: width,
            decoration: BoxDecoration(
            boxShadow: [BoxShadow(color: Colors.grey, offset: Offset(-4, 4), blurRadius: 4.0, spreadRadius: 1.0)],
                 borderRadius: BorderRadius.only(
      topLeft: Radius.circular(25),
        topRight: Radius.circular(25),
        bottomLeft: Radius.circular(25),
        bottomRight: Radius.circular(25)
    ),
              image: DecorationImage(
                image: AssetImage(event.photo),
                fit: BoxFit.cover
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: height-150,),
                Opacity(
                  opacity: 0.4,
                  child : Text(event.name,
                  style: eventsText,),
                ),
                Opacity(
                  opacity: 0.4,
                  child : Text(event.date,
                  style: eventsText,),
                ),
              ],
            ),
          ),
        );
      },
    );
  }).toList(),
);