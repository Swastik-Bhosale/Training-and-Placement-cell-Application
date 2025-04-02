// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:TPO_Cell/data/firestor.dart';

// abstract class AuthenticationDatasource {
//   Future<void> register(String email, String password, String PasswordConfirm);
//   Future<void> login(String email, String password);
  
  
// }

// class AuthenticationRemote extends AuthenticationDatasource {
//   @override
//   Future<void> login(String email, String password) async {
//     await FirebaseAuth.instance.signInWithEmailAndPassword(
//         email: email.trim(), password: password.trim());
//   }

//   @override
//   Future<void> register(
//       String email, String password, String PasswordConfirm) async {
//     if (PasswordConfirm == password) {
//       await FirebaseAuth.instance
//           .createUserWithEmailAndPassword(
//               email: email.trim(), password: password.trim())
//           .then((value) {
//         Firestore_Datasource().CreateUser(email);
//       });
//     }
//   }
// }
import 'package:firebase_auth/firebase_auth.dart';
import 'package:TPO_Cell/data/firestor.dart';

abstract class AuthenticationDatasource {
  Future<void> register(String email, String password, String passwordConfirm);
  Future<User?> login(String email, String password); // Update return type
}

class AuthenticationRemote extends AuthenticationDatasource {
  @override
  Future<User?> login(String email, String password) async {
    try {
      final UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email.trim(), password: password.trim());
      return userCredential.user; // Return the authenticated user
    } catch (e) {
      // Handle login failure
      print("Login failed: $e");
      return null;
    }
  }

  @override
  Future<void> register(
      String email, String password, String passwordConfirm) async {
    if (passwordConfirm == password) {
      await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
              email: email.trim(), password: password.trim())
          .then((value) {
        Firestore_Datasource().CreateUser(email);
      });
    }
  }
}
