import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:sd_project/model/user_nfo.dart';

class FireBaseAuthService {
  final auth.FirebaseAuth _firebaseAuth = auth.FirebaseAuth.instance;

  //User return
  User? _userFromFirebase(auth.User? user) {
    if (user == null) {
      return null;
    }
    return User(user.uid, user.email);
  }

  Stream<User?>? get user {
    return _firebaseAuth.authStateChanges().map(_userFromFirebase);
  }

  //Signin a user with email and password
  Future<User?> signIn(String email, String password) async {
    var userinfo = await _firebaseAuth.currentUser;
    final credentialID = await _firebaseAuth.signInWithEmailAndPassword(
        email: email, password: password);

    return _userFromFirebase(credentialID.user);
  }

  //signup with eamil and password
  Future<User?> signUp(
    String? email,
    String? password,
  ) async {
    final userCredntial = await _firebaseAuth.createUserWithEmailAndPassword(
        email: email!, password: password!);
    return _userFromFirebase(userCredntial.user);
  }

  //signout user from sesion
  Future<void> signOUt() async {
    return await _firebaseAuth.signOut();
  }
}
