import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class MyPageScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        GFCard(
          boxFit: BoxFit.cover,
          titlePosition: GFPosition.start,
          image: Image.asset('assets/images/profile_default.png'),
          title: GFListTile(
            avatar: GFAvatar(
              backgroundImage: AssetImage('assets/images/christmas.jpeg'),
            ),
            titleText: 'Christmas Tree',
            subTitleText: 'Seonwook Kim',
          ),
          content: Text("Merry Christmas and Happy New Year!"),
          buttonBar: GFButtonBar(
            children: [
              GFAvatar(
                backgroundColor: Colors.black,
                // backgroundImage: AssetImage('assets/images/christmas.jpeg'),
                child: Icon(Icons.share, color: Colors.white,),
              ),
              GFAvatar(
                backgroundColor: Colors.black,
                child: Icon(Icons.search, color: Colors.white,),
              ),
              GFAvatar(
                backgroundColor: Colors.black,
                child: Icon(Icons.phone, color: Colors.white,),
              ),
            ],
          ),
        ),
        GFCard(
          boxFit: BoxFit.cover,
          titlePosition: GFPosition.start,
          image: Image.asset('assets/images/profile_default.png'),
          title: GFListTile(
            avatar: GFAvatar(
              backgroundImage: AssetImage('assets/images/christmas.jpeg'),
            ),
            titleText: 'Christmas Tree',
            subTitleText: 'Seonwook Kim',
          ),
          content: Text("Merry Christmas and Happy New Year!"),
          buttonBar: GFButtonBar(
            children: [
              GFAvatar(
                backgroundColor: Colors.black,
                // backgroundImage: AssetImage('assets/images/christmas.jpeg'),
                child: Icon(Icons.share, color: Colors.white,),
              ),
              GFAvatar(
                backgroundColor: Colors.black,
                child: Icon(Icons.search, color: Colors.white,),
              ),
              GFAvatar(
                backgroundColor: Colors.black,
                child: Icon(Icons.phone, color: Colors.white,),
              ),
            ],
          ),
        ),
        GFCard(
          boxFit: BoxFit.cover,
          titlePosition: GFPosition.start,
          image: Image.asset('assets/images/profile_default.png'),
          title: GFListTile(
            avatar: GFAvatar(
              backgroundImage: AssetImage('assets/images/christmas.jpeg'),
            ),
            titleText: 'Christmas Tree',
            subTitleText: 'Seonwook Kim',
          ),
          content: Text("Merry Christmas and Happy New Year!"),
          buttonBar: GFButtonBar(
            children: [
              GFAvatar(
                backgroundColor: Colors.black,
                // backgroundImage: AssetImage('assets/images/christmas.jpeg'),
                child: Icon(Icons.share, color: Colors.white,),
              ),
              GFAvatar(
                backgroundColor: Colors.black,
                child: Icon(Icons.search, color: Colors.white,),
              ),
              GFAvatar(
                backgroundColor: Colors.black,
                child: Icon(Icons.phone, color: Colors.white,),
              ),
            ],
          ),
        ),
        GFCard(
          boxFit: BoxFit.cover,
          titlePosition: GFPosition.start,
          image: Image.asset('assets/images/profile_default.png'),
          title: GFListTile(
            avatar: GFAvatar(
              backgroundImage: AssetImage('assets/images/christmas.jpeg'),
            ),
            titleText: 'Christmas Tree',
            subTitleText: 'Seonwook Kim',
          ),
          content: Text("Merry Christmas and Happy New Year!"),
          buttonBar: GFButtonBar(
            children: [
              GFAvatar(
                backgroundColor: Colors.black,
                // backgroundImage: AssetImage('assets/images/christmas.jpeg'),
                child: Icon(Icons.share, color: Colors.white,),
              ),
              GFAvatar(
                backgroundColor: Colors.black,
                child: Icon(Icons.search, color: Colors.white,),
              ),
              GFAvatar(
                backgroundColor: Colors.black,
                child: Icon(Icons.phone, color: Colors.white,),
              ),
            ],
          ),
        ),
        GFCard(
          boxFit: BoxFit.cover,
          titlePosition: GFPosition.start,
          image: Image.asset('assets/images/profile_default.png'),
          title: GFListTile(
            avatar: GFAvatar(
              backgroundImage: AssetImage('assets/images/christmas.jpeg'),
            ),
            titleText: 'Christmas Tree',
            subTitleText: 'Seonwook Kim',
          ),
          content: Text("Merry Christmas and Happy New Year!"),
          buttonBar: GFButtonBar(
            children: [
              GFAvatar(
                backgroundColor: Colors.black,
                // backgroundImage: AssetImage('assets/images/christmas.jpeg'),
                child: Icon(Icons.share, color: Colors.white,),
              ),
              GFAvatar(
                backgroundColor: Colors.black,
                child: Icon(Icons.search, color: Colors.white,),
              ),
              GFAvatar(
                backgroundColor: Colors.black,
                child: Icon(Icons.phone, color: Colors.white,),
              ),
            ],
          ),
        ),
      ]
    );
  }
}
