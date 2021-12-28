import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StartingScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Column(
          children: [
            SizedBox(
              height: 400,
            ),
            ElevatedButton(
              onPressed: () {
                Get.offAllNamed('/login');
              },
              child: Text('LOGIN'),
              style: ElevatedButton.styleFrom(
                primary: Colors.teal,
                minimumSize: Size(300, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32),
                )
              ),
            ),
            SizedBox(
              height: 16,
            ),
            OutlinedButton(
              onPressed: () {
                Get.offAllNamed('/signUp');
              },
              child: Text('SIGN UP'),
              style: OutlinedButton.styleFrom(
                  primary: Colors.teal,
                  minimumSize: Size(300, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32),
                  )
              ),
            ),
          ],
        ),
      ),
    );
  }
}
