import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:rollerApp/DeleteThisAfter/users.dart';
import 'package:rollerApp/Shared/textStyle.dart';
import 'package:rollerApp/events/detailedEvent.dart';

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
            width: width,
            decoration: BoxDecoration(
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