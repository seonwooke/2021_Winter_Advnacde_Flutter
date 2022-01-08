import 'package:advanced_flutter/models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget userCardFront(UserModel userModel) {
  return Row(
    children: [
      Column(children: [
        Container(
          height: ScreenUtil().setHeight(130),
          width: ScreenUtil().setWidth(160),
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
          height: ScreenUtil().setHeight(70),
          width: ScreenUtil().setWidth(160),
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
              SizedBox(
                height: ScreenUtil().setHeight(16),
              ),
              Text(userModel.name.toString()),
              SizedBox(
                height: ScreenUtil().setHeight(4),
              ),
              Text(userModel.password.toString()),
            ],
          ),
        ),
      ]),
      SizedBox(
        width: ScreenUtil().setWidth(8),
      ),
    ],
  );
}

Widget bigUserCardFront(UserModel userModel) {
  return Row(
    children: [
      Column(children: [
        Container(
          height: ScreenUtil().setHeight(130),
          width: ScreenUtil().setWidth(160),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                userModel.image.toString(),
              ),
              fit: BoxFit.fill,
            ),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(8),
              topRight: Radius.circular(8),
            ),
          ),
        ),
        Container(
          height: ScreenUtil().setHeight(70),
          width: ScreenUtil().setWidth(160),
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
              SizedBox(
                height: ScreenUtil().setHeight(16),
              ),
              Text(userModel.name.toString()),
              SizedBox(
                height: ScreenUtil().setHeight(4),
              ),
              Text(userModel.password.toString()),
            ],
          ),
        ),
      ]),
      SizedBox(
        width: ScreenUtil().setWidth(8),
      ),
    ],
  );
}