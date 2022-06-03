import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final auth = FirebaseAuth.instance;

  Future<UserCredential> signInWithCredential(AuthCredential credential) {
    return auth.signInWithCredential(credential);
  }

  Future<void> signOut() {
    return auth.signOut();
  }

  Stream<User?> get currentUser {
    return auth.authStateChanges();
  }
}
