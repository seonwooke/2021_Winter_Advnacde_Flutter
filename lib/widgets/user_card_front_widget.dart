import 'package:advanced_flutter/models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:firebase_storage/firebase_storage.dart';

Widget userCardFront(UserModel userModel) {
  return Row(
    children: [
      Column(children: [
        Container(
          height: 130,
          width: 160,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                userModel.image.toString(),
              ),
            ),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(8),
              topRight: Radius.circular(8),
            ),
          ),
        ),
        Container(
          height: 70,
          width: 160,
          decoration: BoxDecoration(
            border: Border.all(
              width: 1,
            ),
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(8),
                bottomRight: Radius.circular(8)),
          ),
          child: Column(
            children: [
              SizedBox(height: 16),
              Text(userModel.name.toString()),
              SizedBox(height: 4),
              Text(userModel.password.toString()),
            ],
          ),
        ),
      ]),
      SizedBox(
        width: 8,
      ),
    ],
  );
}
