import 'package:rollerApp/spots/spots.dart';

class User {
  int _userId;
  String _username;
  String _email;
  String _password;

  User(
    this._userId,
    this._username,
    this._email,
    this._password
  );

  int get userId => _userId;
  String get email => _email;
  String get password => _password;
  String get username => _username;

  Event createEvent(String date,String location,String name,String image,String description){
    return Event(
      this.userId,
      this.username,
      date,
      location,
      name,
      image,
      description
    );
  }

  Spot addSpot(String name ,String latlng,String adress,String skateType){
    return Spot(
      this.userId,
      name,
      latlng,
      adress,
      skateType

    );
  }

}

class Event {
  int _creatorId;
  String _creatorName;
  String _name;
  String _date;
  String _location;
  String _photo;
  String _description;

  Event(
    this._creatorId,
    this._creatorName,
    this._date,
    this._location,
    this._name,
    this._photo,
    this._description
  );

  int get creatorId => _creatorId;
  String get creatorName=> _creatorName;
  String get name => _name;
  String get date => _date;
  String get location => _location;
  String get photo => _photo;
  String get description => _description;

}

User user1 = User(1,"porus19","rajporus19@gmail.com","password");
User user2 = User(2,"Surop91","filthyanimal@gmail.com","password");
User user3 = User(3,"Mista123567","mista04@gmail.com","password");
User user4 = User(4,"Mint7","cinnamonBun@gmail.com","password");
User user5 = User(5,"Brie04","cheesesandwich@gmail.com","password");

Event event1 = user1.createEvent(
                    "17/02",
                    "19 Avenue Marcel Cachin",
                    "Wizzard skating", 
                    'assets/roller1.webp',
                    " Lorem ipsum dolor sit amet consectetur adipiscing elit. Donec imperdiet leo eget arcu aliquet pulvinar a non diam. Ut a quam mattis, euismod nunc at, laoreet est. Mauris sollicitudininterdum urna. Nullam ultrices tristique efficitur.Nulla eu pellentesque quam. Integer eu mi lectus.Quisque at luctus elit, at lacinia urna. Suspendissepotenti. Aenean et elit tincidunt, commodo sapien vel,rutrum diam. Aenean elit nibh, consectetur ac justo ac,blandit condimentum erat. Sed eget sodales libero, at posuere nisl.Vestibulum dictum lacinia diam a blandit. Morbi vel est vestibulum, endrerit justo ut, ullamcorper lorem. Curabitur risus justo, condimentum id augue eualiquet semper ipsum. Nulla ut rutrum eros. Pellentesque finibus euismod lectus, sed orttitor ligula ornare nec. In hac habitasse platea dictumst. Duis euismod iaculis lorem,nec viverra risus viverra eu. Sed lacinia aliquet pharetra. Praesent blandit enim quam, ac luctus neque aliquet in. Sed commodo ipsum in dolor fermentum semper. Duis lacinia cursus tellus,nec efficitur ligula placerat ac. Etiam posuere facilisis mi sit amet pulvinar. Donec rutrum laoreet dolor");

Event event2 = user2.createEvent(
                    "18/02",
                    "19 Avenue Machin Chose",
                    "Speed skating", 
                    'assets/roller2.webp',
                    " Lorem ipsum dolor sit amet consectetur adipiscing elit. Donec imperdiet leo eget arcu aliquet pulvinar a non diam. Ut a quam mattis, euismod nunc at, laoreet est. Mauris sollicitudininterdum urna. Nullam ultrices tristique efficitur.Nulla eu pellentesque quam. Integer eu mi lectus.Quisque at luctus elit, at lacinia urna. Suspendissepotenti. Aenean et elit tincidunt, commodo sapien vel,rutrum diam. Aenean elit nibh, consectetur ac justo ac,blandit condimentum erat. Sed eget sodales libero, at posuere nisl.Vestibulum dictum lacinia diam a blandit. Morbi vel est vestibulum, endrerit justo ut, ullamcorper lorem. Curabitur risus justo, condimentum id augue eualiquet semper ipsum. Nulla ut rutrum eros. Pellentesque finibus euismod lectus, sed orttitor ligula ornare nec. In hac habitasse platea dictumst. Duis euismod iaculis lorem,nec viverra risus viverra eu. Sed lacinia aliquet pharetra. Praesent blandit enim quam, ac luctus neque aliquet in. Sed commodo ipsum in dolor fermentum semper. Duis lacinia cursus tellus,nec efficitur ligula placerat ac. Etiam posuere facilisis mi sit amet pulvinar. Donec rutrum laoreet dolor");


Event event3 = user3.createEvent(
                    "19/02",
                    "14 Rue Rivoli",
                    "Slalom skating", 
                    'assets/roller3.webp',
                    " Lorem ipsum dolor sit amet consectetur adipiscing elit. Donec imperdiet leo eget arcu aliquet pulvinar a non diam. Ut a quam mattis, euismod nunc at, laoreet est. Mauris sollicitudininterdum urna. Nullam ultrices tristique efficitur.Nulla eu pellentesque quam. Integer eu mi lectus.Quisque at luctus elit, at lacinia urna. Suspendissepotenti. Aenean et elit tincidunt, commodo sapien vel,rutrum diam. Aenean elit nibh, consectetur ac justo ac,blandit condimentum erat. Sed eget sodales libero, at posuere nisl.Vestibulum dictum lacinia diam a blandit. Morbi vel est vestibulum, endrerit justo ut, ullamcorper lorem. Curabitur risus justo, condimentum id augue eualiquet semper ipsum. Nulla ut rutrum eros. Pellentesque finibus euismod lectus, sed orttitor ligula ornare nec. In hac habitasse platea dictumst. Duis euismod iaculis lorem,nec viverra risus viverra eu. Sed lacinia aliquet pharetra. Praesent blandit enim quam, ac luctus neque aliquet in. Sed commodo ipsum in dolor fermentum semper. Duis lacinia cursus tellus,nec efficitur ligula placerat ac. Etiam posuere facilisis mi sit amet pulvinar. Donec rutrum laoreet dolor");


Event event4 = user4.createEvent(
                    "20/02",
                    "13 Avenue Truc",
                    "Freestyle skating", 
                    'assets/roller4.webp',
                    " Lorem ipsum dolor sit amet consectetur adipiscing elit. Donec imperdiet leo eget arcu aliquet pulvinar a non diam. Ut a quam mattis, euismod nunc at, laoreet est. Mauris sollicitudininterdum urna. Nullam ultrices tristique efficitur.Nulla eu pellentesque quam. Integer eu mi lectus.Quisque at luctus elit, at lacinia urna. Suspendissepotenti. Aenean et elit tincidunt, commodo sapien vel,rutrum diam. Aenean elit nibh, consectetur ac justo ac,blandit condimentum erat. Sed eget sodales libero, at posuere nisl.Vestibulum dictum lacinia diam a blandit. Morbi vel est vestibulum, endrerit justo ut, ullamcorper lorem. Curabitur risus justo, condimentum id augue eualiquet semper ipsum. Nulla ut rutrum eros. Pellentesque finibus euismod lectus, sed orttitor ligula ornare nec. In hac habitasse platea dictumst. Duis euismod iaculis lorem,nec viverra risus viverra eu. Sed lacinia aliquet pharetra. Praesent blandit enim quam, ac luctus neque aliquet in. Sed commodo ipsum in dolor fermentum semper. Duis lacinia cursus tellus,nec efficitur ligula placerat ac. Etiam posuere facilisis mi sit amet pulvinar. Donec rutrum laoreet dolor");


Event event5 = user5.createEvent(
                    "21/02",
                    "17 Rue Le je sais pas quoi",
                    "Freeride skating", 
                    'assets/roller5.webp',
                    " Lorem ipsum dolor sit amet consectetur adipiscing elit. Donec imperdiet leo eget arcu aliquet pulvinar a non diam. Ut a quam mattis, euismod nunc at, laoreet est. Mauris sollicitudininterdum urna. Nullam ultrices tristique efficitur.Nulla eu pellentesque quam. Integer eu mi lectus.Quisque at luctus elit, at lacinia urna. Suspendissepotenti. Aenean et elit tincidunt, commodo sapien vel,rutrum diam. Aenean elit nibh, consectetur ac justo ac,blandit condimentum erat. Sed eget sodales libero, at posuere nisl.Vestibulum dictum lacinia diam a blandit. Morbi vel est vestibulum, endrerit justo ut, ullamcorper lorem. Curabitur risus justo, condimentum id augue eualiquet semper ipsum. Nulla ut rutrum eros. Pellentesque finibus euismod lectus, sed orttitor ligula ornare nec. In hac habitasse platea dictumst. Duis euismod iaculis lorem,nec viverra risus viverra eu. Sed lacinia aliquet pharetra. Praesent blandit enim quam, ac luctus neque aliquet in. Sed commodo ipsum in dolor fermentum semper. Duis lacinia cursus tellus,nec efficitur ligula placerat ac. Etiam posuere facilisis mi sit amet pulvinar. Donec rutrum laoreet dolor");


List<String> imageList = [
  'assets/roller1.webp',
  'assets/roller2.webp',
  'assets/roller3.webp',
  'assets/roller4.webp',
  'assets/roller5.webp'
];

List<Event> latestEventsList = [
  event1,
  event2,
  event3,
  event4,
  event5
];

Spot spot1 = user1.addSpot(
"Médiathèque Aimé Césaire",
"latlng",
"1 Mail de l'Egalité,93120 La Courneuve",
"Slalom");

Spot spot2 = user1.addSpot(
"Médiathèque Aimé Césaire",
"latlng",
"93120 La Courneuve",
"Slalom");

Spot spot3 = user1.addSpot(
"Médiathèque Aimé Césaire",
"latlng",
"93120 La Courneuve",
"Slalom");

Spot spot4 = user1.addSpot(
"Médiathèque Aimé Césaire",
"latlng",
"93120 La Courneuve",
"Slalom");

Spot spot5 = user1.addSpot(
"Médiathèque Aimé Césaire",
"latlng",
"93120 La Courneuve",
"Slalom");

