import 'package:advanced_flutter/models/user_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class FirestoreService {
  static createUserToFirebase(String name, String email, String password) {
    FirebaseFirestore.instance.collection('users').doc(email).set({
      "image": 'https://firebasestorage.googleapis.com/v0/b/winter-practice.appspot.com/o/profile_default.png?alt=media&token=8f817fe2-ed71-4083-b6af-6c061ad805ea',
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

  // static Future<List<UserModel>> getUsers() async {
  //   List<UserModel> userList = [];
  //   try {
  //     await FirebaseFirestore.instance.collection('users').doc().get().then((DocumentSnapshot ds) {
  //
  //     });
  //   } catch (e) {
  //     Get.snackbar('Error getting user list', e.toString());
  //   }
  //   return userList;
  // }

  static Stream<List<UserModel>>? getUsers() {
    try{
      return FirebaseFirestore.instance.collection('users').snapshots().map((value){
        return value.docs.map((item) => UserModel.fromSnapshot(item)).toList();
      });
    }
    catch(e){
      print(e.toString());
      return null;
    }
  }

}