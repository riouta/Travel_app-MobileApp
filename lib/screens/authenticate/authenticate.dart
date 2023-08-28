import 'package:flutter/material.dart';
import 'package:travel_app/screens/authenticate/signin.dart';
import 'package:travel_app/screens/authenticate/register.dart';

//dynamic class with children widgets
class Authenticate extends StatefulWidget {
  const Authenticate({super.key});

  @override
  State<Authenticate> createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {

  //toggles between SignIn and Register 
  bool showSignIn = true; 
  void toggleView() {
    setState(() => showSignIn = !showSignIn );

  }

  @override
  Widget build(BuildContext context) {
    if (showSignIn){
      return SignIn(toggleView: toggleView);
    }else{
      return Register(toggleView: toggleView);
    }
  }
}