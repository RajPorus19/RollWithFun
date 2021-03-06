import 'package:geolocator/geolocator.dart';
import 'dart:async';

class GeolocatorService {
  final Geolocator geo = Geolocator();

  Stream<Position> getCurrentLocation(){
    var locationOptions = LocationOptions(accuracy: LocationAccuracy.high, distanceFilter: 1);
    return geo.getPositionStream(locationOptions);
  }

  Future<Position> getInitialLocation() async{
    return geo.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
  }

}