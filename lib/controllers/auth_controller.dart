import 'package:advanced_flutter/models/user_model.dart';
import 'package:advanced_flutter/services/firestore_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  FirebaseAuth get auth => _auth;

  final Rxn<User> _firebaseUser = Rxn<User>();
  User? get firebaseUser => _firebaseUser.value;

  RxList<UserModel> userList = <UserModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    _firebaseUser.bindStream(_auth.authStateChanges());
  }

  Future<bool> createUser(String name, String email, String password) async {
    try {
      await _auth.createUserWithEmailAndPassword(email: email, password: password);
      await FirestoreService.createUserToFirebase(name, email, password);
      return true;
    } catch (e) {
      Get.snackbar('Error creating account', e.toString());
      return false;
    }
  }

  Future<void> signIn(String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
    } catch (e) {
      Get.snackbar('Error during login', e.toString());
    }
  }
}