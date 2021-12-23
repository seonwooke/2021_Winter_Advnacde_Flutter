import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {

  static createUserToFirebase(String name, String email, String password) {
    FirebaseFirestore.instance.collection('users').doc().set({
      "name": name,
      "email": email,
      "password": password,
    });
  }
}