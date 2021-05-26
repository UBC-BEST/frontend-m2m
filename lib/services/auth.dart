import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future signInAnon() async {
    try {
      UserCredential result = await _auth.createUserWithEmailAndPassword(
          email: "flutter@flutter.com", password: "123456");
      User? user = result.user;
      return user;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  Future signUp() async {
    try {
      UserCredential result = await _auth.createUserWithEmailAndPassword(
          email: "flutter@flutter.com", password: "123456");
      User? user = result.user;
      return user;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  Future signIn() async {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(
          email: "flutter@flutter.com", password: "123456");
      User? user = result.user;
      return user;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  Future signOut() async {}
}
