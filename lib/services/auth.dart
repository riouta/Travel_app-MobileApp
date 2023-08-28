import 'package:firebase_auth/firebase_auth.dart';
import 'package:travel_app/models/user.dart' as LocalUser;

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // Create user object based on User
  LocalUser.User? _userFromUser(User? user) {
    return user != null ? LocalUser.User(uid: user.uid) : null;
  }
  //auth change user stream
  Stream<LocalUser.User?> get userStream{
    return _auth.authStateChanges().map(_userFromUser);
  }

  // Sign in anonymously
  Future<LocalUser.User> signInAnon() async {
    try {
      UserCredential result = await _auth.signInAnonymously();
      User? user = result.user;
      return _userFromUser(user);

    } catch (e) {
      print(e.toString());
      return Future<LocalUser.User?>;
    }
  }

  // Register
  Future registerWithEmailAndPassword(String email, String password) async{
    try {
      AuthResult result = await _auth.createUserWithEmailAndPassword(email: email, password: password);
      User user = result.user;
      return _userFromUser(user);
    }catch(e){
      print(e.toString());
      return null;

    }
  }

  //Sign in 
  Future signInWithEmailAndPassword(String email, String password) async{
    try {
      AuthResult result = await _auth.signInWithEmailAndPassword(email: email, password: password);
      User user = result.user; //takes user from result
      return _userFromUser(user); //returns user based on user model created
    }catch(e){
      print(e.toString());
      return null;

    }
  }

  // Sign out
  Future<void> signOut() async {
    await _auth.signOut();
  }
}
