import 'dart:async';
import 'package:flutter/material.dart';
import 'package:newApp/Models/user.dart';
import 'package:newApp/Services/auth.dart';


class Register extends StatefulWidget {
  // Function toggleView passed through autheticate.dart
  final Function toggleView;
  Register({this.toggleView});
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> with TickerProviderStateMixin {

  final AuthService _auth = AuthService();
  final _formkey = GlobalKey<FormState>();

  // text field state
  String email = '';
  String password = '';
  String username = '';

  //Error
  String error = "";

  // Validate functions

  String validateUsername(String username){
    if(username.isEmpty){
      return "Please enter an username";
    }
    else if(username.length > 25){
      return "Your username is too long";
    }
    return null;
  }

  String validateEmail(String email){
    return email.isEmpty ? 'Enter an email' : null;
  }

  String validatePassword(String password){
    return password.length < 6 ? 'Enter a password 6+ chars long' : null;
  }

  // animation
  Animation<double> animation;
  AnimationStatus animationStatus;
  AnimationController animationController;
  @override
  void initState(){
    super.initState();
    animationController = AnimationController(
      duration: Duration(milliseconds: 500),
      vsync: this
    );

    animation = Tween<double>(begin: 0.0, end: 1.0).animate(animationController)
    ..addListener(() {
      setState(() {});
    })..addStatusListener((status) {
      setState(() {
        animationStatus = status;
      });
    });

    animationController.forward();
    
  }

  startTime() async {
  var duration = new Duration(milliseconds: 500);
  return new Timer(duration, widget.toggleView);
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        elevation: 0.0,
        title: Text('Sign in to Brew Crew'),
        actions: <Widget>[
          FlatButton.icon(onPressed: () async{
              animationController.reverse();
              startTime();
            }, 
          icon: Icon(Icons.arrow_back), 
          label: Text("Sign in"))
        ],
      ),
      body: SingleChildScrollView(
              child: Opacity(
                opacity: animation.value,
                child: Container(
          padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
          child: Form(
            key: _formkey,
            child: Column(
                children: <Widget>[
                  SizedBox(height: 20.0),
                  Text("Register now"),
                  SizedBox(height: 20.0),
                    TextFormField(
                  validator: (val) => validateUsername(val),
                      decoration: InputDecoration(
                        icon: Icon(Icons.face),
                        hintText: "Please enter a username",
                        labelText: "Username",
                      ),
                      onChanged: (val) {
                        setState(() => username = val);
                      },
                    ),
                  SizedBox(height: 20.0),
                  TextFormField(
                  validator: (val) => validateEmail(val),
                    decoration: InputDecoration(
                      icon: Icon(Icons.mail),
                      hintText: "Please enter your email",
                      labelText: "Email",
                    ),
                    onChanged: (val) {
                      setState(() => email = val);
                    },
                  ),
                  SizedBox(height: 20.0),
                  TextFormField(
                  validator: (val) => validatePassword(val),
                  decoration: InputDecoration(
                      icon: Icon(Icons.lock),
                      hintText: "Please enter a password",
                      labelText: "Password",
                    ),
                    obscureText: true,
                    onChanged: (val) {
                      setState(() => password = val);
                    },
                  ),
                  SizedBox(height: 20.0),
                  RaisedButton(
                    child: Text(
                      'Register',
                    ),
                    onPressed: () async {
                      if(_formkey.currentState.validate()){
                        print(username);
                        User result = await _auth.registerWithEmailAndPassword(
                          email, password, username);
                        if(result == null){
                          setState(() {
                            error = "Please provide a valid email.";
                          });
                        }
                      }

                    }
                  ),
                  Text(error),
                ],
            ),
          ),
        ),
              ),
      ),
    );
  }
}