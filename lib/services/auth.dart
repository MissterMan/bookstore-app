import 'package:bookstore/services/auth_services.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthenticationUser {
  final authService = AuthService();
  final auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn(
    scopes: [
      'email',
      'https://www.googleapis.com/auth/contacts.readonly',
    ],
  );

  Future<String?> logIn(
      {required String email, required String password}) async {
    String errorMessage;

    try {
      final User user = (await auth.signInWithEmailAndPassword(
              email: email, password: password))
          .user!;
      return email;
    } on FirebaseAuthException catch (error) {
      // print(error.code);
      // print(error.message);
      switch (error.code) {
        case "invalid-email":
          errorMessage = "Your email address appears to be malformed.";
          break;
        case "wrong-password":
          errorMessage = "Your password is wrong.";
          break;
        case "user-not-found":
          errorMessage = "User with this email doesn't exist.";
          break;
        case "user-disabled":
          errorMessage = "User with this email has been disabled.";
          break;
        default:
          errorMessage = "An undefined Error happened.";
      }
      return errorMessage;
    }
  }

  Future<String?> register(
      {required String email,
      required String password,
      required String userName}) async {
    try {
      await auth.createUserWithEmailAndPassword(
          email: email, password: password);
      await auth.currentUser?.updateDisplayName(userName);
      return userName;
    } on FirebaseAuthException catch (error) {
      // print(error.message);
      return error.message;
    }
  }

  Stream<User?> get currentUser {
    return authService.currentUser;
  }

  googleSignIn() async {
    try {
      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      final GoogleSignInAuthentication googleAuth =
          await googleUser!.authentication;
      final AuthCredential credential = GoogleAuthProvider.credential(
        idToken: googleAuth.idToken,
        accessToken: googleAuth.accessToken,
      );
      final result = await authService.signInWithCredential(credential);
      print('${result.user?.displayName}');
      return result.user;
    } on FirebaseAuthException catch (error) {
      print(error.message);
      return false;
    }
  }

  signOut() {
    authService.signOut();
  }
}
