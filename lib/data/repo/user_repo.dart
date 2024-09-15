import 'package:clinic_booking_app/data/models/user_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class UserRepo {
  FirebaseFirestore db = FirebaseFirestore.instance;
  UserModel? _userModel;
  Future<dynamic> getUserData() async {
    List<UserModel> userData = [];

    try {
      await db.collection("users").get().then((event) {
        for (var doc in event.docs) {
          userData.add(UserModel.fromFirebase(doc.data()));
        }
      });
      return userData;
    } catch (e) {
      return e;
    }
  }

  addUser(UserModel user) {
    try {
      var userMap = _userModel!.toFirebase(user);
      db.collection("users").add(userMap);
    } catch (e) {
      print(e);
    }
  }
}
