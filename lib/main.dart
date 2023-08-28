import 'package:travel_app/models/user.dart';
import 'package:travel_app/screens/wrapper.dart';
import 'package:flutter/material.dart';
import 'package:Provider/provider.dart';
//import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:travel_app/services/auth.dart';


void main() {
  runApp(const MyApp()); // MyApp considered as route widget
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //streaprovider listens to authservice to detect either sign in or out
    return StreamProvider<User>.value(
      value: AuthService().user,
      child: MaterialApp(
        home: Wrapper(),
      ),
    );
  }
  }