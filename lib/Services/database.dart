import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:newApp/Models/event.dart';
import 'package:newApp/Models/user.dart';

class DatabaseService{

  final String uid;
  DatabaseService({this.uid});

  //collection reference
  final CollectionReference userCollection = Firestore.instance.collection("users");
  final CollectionReference eventCollection = Firestore.instance.collection("collection");

// For UserData ----------------------------------------------------------------------------------

  Future<void> updateUserData(String username,String email) async {
    return await userCollection.document(uid).setData({
        'uid': uid,
        'username' : username,
        'email' : email,
    });
  }

    UserData _userDataFromSnapshot(DocumentSnapshot snapshot) {
    return UserData(
      uid: uid,
      email: snapshot.data['email'],
      username: snapshot.data['username'],
    );
  }

    Stream<UserData> get userData {
    return userCollection.document(uid).snapshots()
      .map(_userDataFromSnapshot);
  }


// For events ----------------------------------------------------------------------------------
  Future createEvent(Event event) async{
    return await eventCollection.add({
        "creatorId": event.creatorId,
        "creatorName": event.creatorName,
        "name": event.name,
        "date": event.date,
        "location" : event.location,
        "photo" : event.photo,
        "description": event.description
    });
  }

/*
  List<Event> _eventListFromSnapshot(QuerySnapshot snapshot){
    return snapshot.documents.map((doc){
      return Event(
        creatorId : doc.data['creatorId'] ?? "",
        creatorName : doc.data['creatorName'] ?? "",
        name : doc.data['name'] ?? "",
        date : doc.data['creatorId'] ?? "",
        location : doc.data['location'] ?? "",
        photo : doc.data['photo'] ?? "",
        description : doc.data['description'] ?? ""
      );
    }).toList();
  }
*/
}