import 'package:advanced_flutter/models/user_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class FirestoreService {

  static createUserToFirebase(String name, String email, String password) {
    FirebaseFirestore.instance.collection('users').doc(email).set({
      "name": name,
      "email": email,
      "password": password,
    });
  }

  static Future<UserModel> getUser(String email) async {
    UserModel userModel = UserModel();
    try {
      await FirebaseFirestore.instance.collection('users').doc(email).get().then((DocumentSnapshot ds) {
        userModel = UserModel.fromSnapshot(ds);
      });
    } catch (e) {
      Get.snackbar('Error getting user', e.toString());
    }
    return userModel;
  }
}