import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  String? name;
  String? email;
  String? password;
  String? image;

  UserModel({
    this.name,
    this.email,
    this.password,
    this.image
  });

  UserModel.fromSnapshot(DocumentSnapshot snapshot)
      : name = snapshot['name'],
        email = snapshot['email'],
        password = snapshot['password'],
        image = snapshot['image'];

  UserModel.fromMap(Map<String, dynamic> map)
    : name = map['name'],
      email = map['email'],
      password = map['password'],
      image = map['image'];
}