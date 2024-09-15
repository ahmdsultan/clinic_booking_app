import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirebaseFunctions {
  FirebaseFirestore db = FirebaseFirestore.instance;

  Future<String> createNewUser(
      {required String emailAddress, required String password}) async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailAddress,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        return 'weak password please retry again';
      } else if (e.code == 'email-already-in-use') {
        return 'The account already exists for that email.';
      }
    } catch (e) {
      print(e);
      return 'There is an error';
    }
    return '';
  }

  Future<String> signinUser(
      {required String emailAddress, required String password}) async {
    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: emailAddress, password: password);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        return 'No user found for that email.';
      } else if (e.code == 'wrong-password') {
        return 'Wrong password provided for that user.';
      }
    }
    return '';
  }

  addUserData({
    required String firstName,
    required String lastName,
    required int day,
    required int month,
    required int year,
  }) {
    final user = <String, dynamic>{
      "first_name": firstName,
      "last_name": lastName,
      "day": day,
      "month": month,
      "year": year,
    };

// Add a new document with a generated ID
    db.collection("users").add(user);
  }
}
