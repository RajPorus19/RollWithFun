class Event {
  int creatorId;
  String creatorName;
  String name;
  String date;
  String location;
  String photo;
  String description;

  Event(
    this.creatorId,
    this.creatorName,
    this.name,
    this.date,
    this.location,
    this.photo,
    this.description
  );

  Event.fromMap(Map snapshot) :
        creatorId = snapshot['creatorId'] ?? "",
        creatorName = snapshot['creatorName'] ?? "",
        name = snapshot['name'] ?? "",
        date = snapshot['date'] ?? "",
        location = snapshot['location'] ?? "",
        photo = snapshot['photo'] ?? "",
        description = snapshot['description'] ?? "";


  toJson(){
  return {
        "creatorId": creatorId,
        "creatorName": creatorName,
        "name": name,
        "date": date,
        "location" : location,
        "description": description
    };
  }
}

// for test purpose

Event event1 = Event(1,"User1","Wizzard skating","17/02","19 rue chose","assets/roller1.webp"," Lorem ipsum dolor sit amet consectetur adipiscing elit. Donec imperdiet leo eget arcu aliquet pulvinar a non diam. Ut a quam mattis, euismod nunc at, laoreet est. Mauris sollicitudininterdum urna. Nullam ultrices tristique efficitur.Nulla eu pellentesque quam. Integer eu mi lectus.Quisque at luctus elit, at lacinia urna. Suspendissepotenti. Aenean et elit tincidunt, commodo sapien vel,rutrum diam. Aenean elit nibh, consectetur ac justo ac,blandit condimentum erat. Sed eget sodales libero, at posuere nisl.Vestibulum dictum lacinia diam a blandit. Morbi vel est vestibulum, endrerit justo ut, ullamcorper lorem. Curabitur risus justo, condimentum id augue eualiquet semper ipsum. Nulla ut rutrum eros. Pellentesque finibus euismod lectus, sed orttitor ligula ornare nec. In hac habitasse platea dictumst. Duis euismod iaculis lorem,nec viverra risus viverra eu. Sed lacinia aliquet pharetra. Praesent blandit enim quam, ac luctus neque aliquet in. Sed commodo ipsum in dolor fermentum semper. Duis lacinia cursus tellus,nec efficitur ligula placerat ac. Etiam posuere facilisis mi sit amet pulvinar. Donec rutrum laoreet dolor");
Event event2 = Event(1,"User1","Wizzard skating","17/02","19 rue chose","assets/roller2.webp"," Lorem ipsum dolor sit amet consectetur adipiscing elit. Donec imperdiet leo eget arcu aliquet pulvinar a non diam. Ut a quam mattis, euismod nunc at, laoreet est. Mauris sollicitudininterdum urna. Nullam ultrices tristique efficitur.Nulla eu pellentesque quam. Integer eu mi lectus.Quisque at luctus elit, at lacinia urna. Suspendissepotenti. Aenean et elit tincidunt, commodo sapien vel,rutrum diam. Aenean elit nibh, consectetur ac justo ac,blandit condimentum erat. Sed eget sodales libero, at posuere nisl.Vestibulum dictum lacinia diam a blandit. Morbi vel est vestibulum, endrerit justo ut, ullamcorper lorem. Curabitur risus justo, condimentum id augue eualiquet semper ipsum. Nulla ut rutrum eros. Pellentesque finibus euismod lectus, sed orttitor ligula ornare nec. In hac habitasse platea dictumst. Duis euismod iaculis lorem,nec viverra risus viverra eu. Sed lacinia aliquet pharetra. Praesent blandit enim quam, ac luctus neque aliquet in. Sed commodo ipsum in dolor fermentum semper. Duis lacinia cursus tellus,nec efficitur ligula placerat ac. Etiam posuere facilisis mi sit amet pulvinar. Donec rutrum laoreet dolor");
Event event3 = Event(1,"User1","Wizzard skating","17/02","19 rue chose","assets/roller3.webp"," Lorem ipsum dolor sit amet consectetur adipiscing elit. Donec imperdiet leo eget arcu aliquet pulvinar a non diam. Ut a quam mattis, euismod nunc at, laoreet est. Mauris sollicitudininterdum urna. Nullam ultrices tristique efficitur.Nulla eu pellentesque quam. Integer eu mi lectus.Quisque at luctus elit, at lacinia urna. Suspendissepotenti. Aenean et elit tincidunt, commodo sapien vel,rutrum diam. Aenean elit nibh, consectetur ac justo ac,blandit condimentum erat. Sed eget sodales libero, at posuere nisl.Vestibulum dictum lacinia diam a blandit. Morbi vel est vestibulum, endrerit justo ut, ullamcorper lorem. Curabitur risus justo, condimentum id augue eualiquet semper ipsum. Nulla ut rutrum eros. Pellentesque finibus euismod lectus, sed orttitor ligula ornare nec. In hac habitasse platea dictumst. Duis euismod iaculis lorem,nec viverra risus viverra eu. Sed lacinia aliquet pharetra. Praesent blandit enim quam, ac luctus neque aliquet in. Sed commodo ipsum in dolor fermentum semper. Duis lacinia cursus tellus,nec efficitur ligula placerat ac. Etiam posuere facilisis mi sit amet pulvinar. Donec rutrum laoreet dolor");
Event event4 = Event(1,"User1","Wizzard skating","17/02","19 rue chose","assets/roller4.webp"," Lorem ipsum dolor sit amet consectetur adipiscing elit. Donec imperdiet leo eget arcu aliquet pulvinar a non diam. Ut a quam mattis, euismod nunc at, laoreet est. Mauris sollicitudininterdum urna. Nullam ultrices tristique efficitur.Nulla eu pellentesque quam. Integer eu mi lectus.Quisque at luctus elit, at lacinia urna. Suspendissepotenti. Aenean et elit tincidunt, commodo sapien vel,rutrum diam. Aenean elit nibh, consectetur ac justo ac,blandit condimentum erat. Sed eget sodales libero, at posuere nisl.Vestibulum dictum lacinia diam a blandit. Morbi vel est vestibulum, endrerit justo ut, ullamcorper lorem. Curabitur risus justo, condimentum id augue eualiquet semper ipsum. Nulla ut rutrum eros. Pellentesque finibus euismod lectus, sed orttitor ligula ornare nec. In hac habitasse platea dictumst. Duis euismod iaculis lorem,nec viverra risus viverra eu. Sed lacinia aliquet pharetra. Praesent blandit enim quam, ac luctus neque aliquet in. Sed commodo ipsum in dolor fermentum semper. Duis lacinia cursus tellus,nec efficitur ligula placerat ac. Etiam posuere facilisis mi sit amet pulvinar. Donec rutrum laoreet dolor");
Event event5 = Event(1,"User1","Wizzard skating","17/02","19 rue chose","assets/roller5.webp"," Lorem ipsum dolor sit amet consectetur adipiscing elit. Donec imperdiet leo eget arcu aliquet pulvinar a non diam. Ut a quam mattis, euismod nunc at, laoreet est. Mauris sollicitudininterdum urna. Nullam ultrices tristique efficitur.Nulla eu pellentesque quam. Integer eu mi lectus.Quisque at luctus elit, at lacinia urna. Suspendissepotenti. Aenean et elit tincidunt, commodo sapien vel,rutrum diam. Aenean elit nibh, consectetur ac justo ac,blandit condimentum erat. Sed eget sodales libero, at posuere nisl.Vestibulum dictum lacinia diam a blandit. Morbi vel est vestibulum, endrerit justo ut, ullamcorper lorem. Curabitur risus justo, condimentum id augue eualiquet semper ipsum. Nulla ut rutrum eros. Pellentesque finibus euismod lectus, sed orttitor ligula ornare nec. In hac habitasse platea dictumst. Duis euismod iaculis lorem,nec viverra risus viverra eu. Sed lacinia aliquet pharetra. Praesent blandit enim quam, ac luctus neque aliquet in. Sed commodo ipsum in dolor fermentum semper. Duis lacinia cursus tellus,nec efficitur ligula placerat ac. Etiam posuere facilisis mi sit amet pulvinar. Donec rutrum laoreet dolor");


List<Event> latestEventsList = [
  event1,
  event2,
  event3,
  event4,
  event5
];