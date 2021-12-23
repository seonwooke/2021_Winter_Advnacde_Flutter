// import 'package:freezed_annotation/freezed_annotation.dart';
//
// part 'user.freezed.dart';
// part 'user.g.dart';
//
// @freezed
// class UserModel with _$UserModel {
//   factory UserModel({
//     required String name,
//     required String email,
//     required String password,
//   }) = _UserModel;
//
//   factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);
// }
class UserModel {
  String? name;
  String? email;
  String? password;

  UserModel({
    this.name,
    this.email,
    this.password
  });
}