import 'package:firebase_auth/firebase_auth.dart';
import 'package:frontend_m2m/model/m2m_user.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  M2MUser? _userFromFirebase(User? u) {
    return u != null ? M2MUser(uid: u.uid) : null;
  }

  Stream<M2MUser?> get user {
    return _auth
        .authStateChanges()
        // .map((User? u) => _userFromFirebase(u));
        .map(_userFromFirebase);
  }

  Future signInTest() async {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(
          email: "flutter@flutter.com", password: "123456");
      User? user = result.user;
      return _userFromFirebase(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  Future signUp(String email, String password) async {
    try {
      UserCredential result = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      User? user = result.user;
      return _userFromFirebase(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  Future signIn(String email, String password) async {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      User? user = result.user;
      return _userFromFirebase(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  Future signOut() async {
    try {
      return await _auth.signOut();
    } catch (e) {
      print(e.toString());
      print("Error signing out");
    }
  }
}
