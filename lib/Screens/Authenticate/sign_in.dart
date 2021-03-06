import 'dart:async';

import 'package:flutter/material.dart';
import 'package:newApp/Services/auth.dart';
import 'package:newApp/Shared/loading.dart';

class SignIn extends StatefulWidget {
  // Function toggleView passed through autheticate.dart
  final Function toggleView;
  SignIn({this.toggleView});
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> with TickerProviderStateMixin {

  final AuthService _auth = AuthService();
  final _formkey = GlobalKey<FormState>();
  bool loading = false;

  // text field state
  String email = '';
  String password = '';
  String error = '';


  // validators
  String validateEmail(String email){
    return email.isEmpty ? 'Enter your email' : null;
  }

  String validatePassword(String password){
    return password.isEmpty ? 'Enter a password' : null;
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
    return loading ? Loading() : Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        elevation: 0.0,
        title: Text('Sign in to Brew Crew'),
        //Toggle sign in/register
        actions: <Widget>[
          FlatButton.icon(onPressed: () async{
              animationController.reverse();
              startTime();
            }, 
          icon: Icon(Icons.arrow_forward), 
          label: Text("Register"))
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
                  Text("Sign in now"),
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
                  validator: (val) => validatePassword(password),
                  decoration: InputDecoration(
                      icon: Icon(Icons.lock),
                      hintText: "Please enter a password",
                      labelText: "Password",
                    ),
                    obscureText: true,
                    onChanged: (val) {
                      setState(() => password = val);
                    },),
                  SizedBox(height: 20.0),
                  RaisedButton(
                    child: Text(
                      'Sign In',
                    ),
                    onPressed: () async {
                      if(_formkey.currentState.validate()){
                        setState(() {
                          loading = true;
                        });
                        dynamic result = await _auth.signInWithEmailAndPassword(
                          email, password);
                        if(result==null){
                          setState(() {
                            error = "Could not sign in with those credentials";
                            loading = false;
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