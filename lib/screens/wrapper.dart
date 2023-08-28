import 'package:travel_app/screens/authenticate/authenticate.dart';
import 'package:travel_app/screens/home/home.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/models/user.dart';
//import 'package:Provider/Provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


class Wrapper extends StatelessWidget {
  const Wrapper({super.key});

  @override
  Widget build(BuildContext context) {
    //access User data from Provider
    final userr= Provider.of<User>(context);
    


    //returns either home or authenticate widget
    if (userr == null){
      return Authenticate();
    }
    else{
      return Home();
    }
  }
}