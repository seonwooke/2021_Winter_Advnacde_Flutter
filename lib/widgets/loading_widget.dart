import 'package:flutter/material.dart';

Widget loadingWidget() {
  return Center(
    child: Container(
      alignment: AlignmentDirectional.center,
      decoration: BoxDecoration(
        color: Colors.black12,
      ),
      child: Center(
        child: SizedBox(
          height: 50.0,
          width: 50.0,
          child: CircularProgressIndicator(
            strokeWidth: 7.0,
            valueColor: AlwaysStoppedAnimation<Color>(Colors.tealAccent),
          ),
        ),
      ),
    ),
  );
}

Widget loadingWidgetSub() {
  return Center(
    child: Container(
      alignment: AlignmentDirectional.center,
      decoration: BoxDecoration(
        color: Colors.black12,
      ),
      child: Center(
        child: SizedBox(
          height: 50.0,
          width: 50.0,
          child: CircularProgressIndicator(
            strokeWidth: 7.0,
            valueColor: AlwaysStoppedAnimation<Color>(Colors.tealAccent),
          ),
        ),
      ),
    ),
  );
}