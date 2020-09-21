import 'package:firebase_auth/firebase_auth.dart';
import 'package:newApp/Models/user.dart';
import 'package:newApp/Services/database.dart';

class AuthService {

  final FirebaseAuth _auth = FirebaseAuth.instance;

  // Create user object
  User _userFromFirebaseUser(FirebaseUser user){
    return user != null ? User(uid: user.uid) : null;
  }

  //Stream for user
  Stream<User> get user{
    return _auth.onAuthStateChanged.map(_userFromFirebaseUser);
  }

  Future signInAnon() async{
    try{
        AuthResult result = await _auth.signInAnonymously();
        FirebaseUser user = result.user;
        return _userFromFirebaseUser(user);
    }
    catch(e){
        print(e.toString());
        return null;
  }

  }

  // sign in with email and password

  Future signInWithEmailAndPassword(String email, String password) async {
    try {
      AuthResult result = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password);
      FirebaseUser user = result.user;
      return _userFromFirebaseUser(user);
    }catch(e){
      print(e);
    }
  }

  // register with email and password

  Future registerWithEmailAndPassword(String email, String password, String username) async {
    try{
      AuthResult result = 
      await _auth.createUserWithEmailAndPassword(
      email: email, password: password);
      FirebaseUser user = result.user;
      // Add username
      await DatabaseService(uid:user.uid).updateUserData(username,email);
      return _userFromFirebaseUser(user);
    } catch(e) {
      print(e);
    }
  }
  // sign out
  Future signOut() async {
    try{
      return await _auth.signOut();
    }catch(e){
      print(e);
      return null;
    }
  }


}
