import 'package:flutter/material.dart';
import 'package:travel_app/services/auth.dart';

class SignIn extends StatefulWidget {
  //const SignIn({super.key});

  final Function toggleView;
  SignIn({required this.toggleView});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>(); // global key to identify form

  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: Text('Sign in to travel app'),
        actions: <Widget>[
          TextButton.icon(
            icon: Icon(Icons.person),
            label: Text('Register'),
            onPressed: () {
              widget.toggleView(); //toggle to Register
            },
          )
        ],

      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20 , horizontal: 50),
        //form for SignIn
        child: Form(
          key: _formKey, //associate key with form
          child: Column(
            children: <Widget>[
              SizedBox(height: 20.0),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Email',
                  fillColor: Colors.white,
                ),
                onChanged: (val) {
                  setState(() => email = val);
                }
              ),
              SizedBox(height: 20.0),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Password',
                  fillColor: Colors.white,
                ),
                obscureText: true,
                onChanged: (val) {
                  setState(() => password = val);
                }
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                primary: Colors.brown, // Button background color
                ),
                child: Text(
                  'Sign in',
                  style: TextStyle(color: Colors.white)
                ),
                onPressed: () async{
                  print(email);
                  print(password);
                  dynamic result = await _auth.signInWithEmailAndPassword(email, password);
                  
                  
                },
              ),
            ],

          ),
        ),
      ),
    );
  }
}