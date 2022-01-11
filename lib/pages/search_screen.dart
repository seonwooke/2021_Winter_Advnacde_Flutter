import 'package:advanced_flutter/controllers/auth_controller.dart';
import 'package:advanced_flutter/models/user_model.dart';
import 'package:advanced_flutter/services/firestore_service.dart';
import 'package:advanced_flutter/widgets/loading_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:firestore_search/firestore_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SearchScreen extends StatelessWidget {
  final authController = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {

    return FirestoreSearchScaffold(
      firestoreCollectionName : 'users',
      searchBy : 'name',
      scaffoldBody: Center(),
      dataListFromSnapshot: UserModel().userListFromSnapshot,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          final List<UserModel>? userList = snapshot.data;
          if (userList!.isEmpty) {
            return const Center(
              child: Text('No Result Returned'),
            );
          }
          return ListView.builder(
            itemCount: userList.length,
            itemBuilder: (context, index) {
              final UserModel user = userList[index];

              return Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      '${user.name}',
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0, left: 8.0, right: 8.0),
                    child: Text(
                      '${user.email}',
                      style: Theme.of(context).textTheme.headline5,
                    ),
                  )
                ],
              );
            },
          );
        }

        if (snapshot.connectionState == ConnectionState.done) {
          if (!snapshot.hasData) {
            return const Center(
              child: Text('No Result Returned'),
            );
          }
        }
        return Center(
          child: loadingWidget(),
        );
      }
    );
  }
  // @override
  // Widget build(BuildContext context) {
  //   return StreamBuilder(
  //     stream: FirestoreService.getUsers(),
  //     builder: (context, snapshot) {
  //       if (snapshot.connectionState == ConnectionState.active) {
  //         List<UserModel> userList = snapshot.data as List<UserModel> ;
  //         return Scaffold(
  //           appBar: AppBar(
  //             title: Text('SEARCH'),
  //             centerTitle: true,
  //             backgroundColor: Colors.teal,
  //           ),
  //           body: Padding(
  //             padding: const EdgeInsets.all(8.0),
  //             child: Column(
  //               children: [
  //                 SizedBox(
  //                   height: ScreenUtil().setHeight(16),
  //                 ),
  //                 CarouselSlider.builder(
  //                   itemCount: userList.length,
  //                   itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) =>
  //                       Container(
  //                         padding: EdgeInsets.all(8),
  //                         width: ScreenUtil().setWidth(350),
  //                         decoration: BoxDecoration(
  //                           image: DecorationImage(
  //                             image : NetworkImage(userList[itemIndex].image.toString()),
  //                             fit : BoxFit.fill,
  //                           ),
  //                           borderRadius: BorderRadius.circular(8),
  //                         ),
  //                         child: Text(
  //                           userList[itemIndex].name.toString(),
  //                           style: TextStyle(
  //                             color: Colors.black,
  //                           ),
  //                         ),
  //                       ),
  //                   options: CarouselOptions(
  //                     autoPlay: true,
  //                     enlargeCenterPage: true,
  //                     aspectRatio: 1.0,
  //                     initialPage: 1,
  //                   ),
  //                 )
  //               ],
  //             ),
  //           )
  //         );
  //       }
  //       else {
  //         return Center(
  //           child: loadingWidget(),
  //         );
  //       }
  //     }
  //   );
  // }
}
