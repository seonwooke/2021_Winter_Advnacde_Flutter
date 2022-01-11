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

  //QuerySnapshot : Collection.get
  //DocumentSnapshot : Document.get
  List<UserModel> userListFromSnapshot(QuerySnapshot querySnapshot) {
    return querySnapshot.docs.map((snapshot) {
      final Map<String, dynamic> UserMap = snapshot.data() as Map<String, dynamic>;

      return UserModel(
        name: UserMap['name'],
        email: UserMap['email'],
        password: UserMap['password'],
        image: UserMap['image'],
      );
    }).toList();
  }
}