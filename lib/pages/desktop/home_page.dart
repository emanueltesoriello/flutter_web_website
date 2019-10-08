import 'package:emanueltesoriello/constants/fonts.dart';
import 'package:flutter/material.dart';

import '../../constants/assets.dart';
import '../../widget/side_drawer.dart';
import '../../functions/open_url.dart';

class HomePageDesktop extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePageDesktop> {
  double targetWidth;
  double targetHeight;
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  Widget _buildLoveCodingImage() {
    return Image.asset(
      Assets.loveCoding,
      height: targetWidth / 8,
      fit: BoxFit.cover,
    );
  }

  Widget _col1() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          child: Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(
                    left: targetWidth / 38,
                    right: targetWidth / 45,
                    top: targetWidth / 38),
                child: Container(
                  height: targetWidth / 19,
                  child: Image.asset(Assets.logoBlack, color: Colors.black),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: targetWidth / 38),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'EMANUEL',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: targetWidth / 62,
                          fontFamily: Fonts.Montserrat),
                    ),
                    Text(
                      'TESORIELLO',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: targetWidth / 62,
                          fontFamily: Fonts.Montserrat),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
            margin: EdgeInsets.only(
                top: targetHeight / 2.8, left: targetWidth / 100),
            child: IconButton(
              icon: Icon(Icons.menu),
              color: Colors.black,
              iconSize: targetWidth / 25,
              onPressed: () {
                print('Hamburger menu pressed');
                _scaffoldKey.currentState.openDrawer();
              },
            )),
      ],
    );
  }

  Widget _col2() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: targetHeight / 4.5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Who I am',
                    maxLines: 3,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: targetWidth / 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: Fonts.Montserrat),
                  ),
                  SizedBox(
                    height: targetHeight / 20,
                  ),
                  Container(
                    width:
                        targetWidth - ((targetWidth / 4) + (targetWidth / 3)),
                    child: Text(
                      "Since I was a child, I've always dreamed to work in the IT field in order to use my ideas and creativity.\nI loved computers and the way they changed our everyday life.\n\n" +
                          "Currently I am a “Engineering as Marketing” developer specialized in web & mobile app development for IoT/Industry 4.0 world.\n\n" +
                          "My favorite technologies are Google Flutter and GOlang, but I like to experiment new and innovative technologies, to increase my skills and my desire to innovate more and more!",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: targetWidth / 100 + targetHeight / 70,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _col3() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
            top: targetWidth / 38,
          ),
          child: Container(
            margin: EdgeInsets.only(right: targetWidth / 38),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    openUrl(
                        'https://www.linkedin.com/in/emanuel-tesoriello-developer/');
                  },
                  child: Image.asset(
                    Assets.linkedin,
                    height: targetWidth / 40,
                    fit: BoxFit.cover,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  width: targetWidth / 120,
                ),
                GestureDetector(
                  onTap: () {
                    openUrl('https://www.facebook.com/EmanuelTesorielloDev');
                  },
                  child: Image.asset(
                    Assets.facebook,
                    height: targetWidth / 40,
                    fit: BoxFit.cover,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  width: targetWidth / 120,
                ),
                GestureDetector(
                  onTap: () {
                    openUrl('https://github.com/emanueltesoriello');
                  },
                  child: Image.asset(
                    Assets.github,
                    height: targetWidth / 40,
                    fit: BoxFit.cover,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  width: targetWidth / 120,
                ),
                GestureDetector(
                  onTap: () {
                    openUrl('https://twitter.com/etesoriello');
                  },
                  child: Image.asset(
                    Assets.twitter,
                    height: targetWidth / 40,
                    fit: BoxFit.cover,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          margin:
              EdgeInsets.only(top: targetWidth / 20, right: targetWidth / 38),
          child: _buildLoveCodingImage(),
        ),
        GestureDetector(
          onTap: () {
            openUrl('mailto:emanuel.tesoriello@gmail.com');
          },
          child: Container(
            alignment: Alignment.center,
            width: targetWidth / 4,
            padding: EdgeInsets.only(
              top: targetWidth / 90,
              bottom: targetWidth / 90,
              //left: targetWidth / 20,
              //right: targetWidth / 20
            ),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                // increase from 0 to 1
                stops: [0.1, 0.9],
                colors: [
                  Color.fromRGBO(33, 150, 243, 0.8).withOpacity(0.7),
                  Color.fromRGBO(33, 150, 243, 1).withOpacity(0.8),
                ],
              ),
            ),
            child: Text(
              'Contact me',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: targetWidth / 75,
                  fontWeight: FontWeight.bold,
                  fontFamily: Fonts.Montserrat),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildBody() {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Container(
          width: targetWidth / 4.5,
          height: targetHeight,
          child: _col1(),
        ),
        Container(
          width: targetWidth - ((targetWidth / 4.5) + (targetWidth / 3)),
          height: targetHeight,
          child: _col2(),
        ),
        Container(
          width: targetWidth / 3,
          height: targetHeight,
          child: _col3(),
        )
      ],
    );
  }

  ThemeData _buildThemeData() {
    return ThemeData(
      brightness: Brightness.dark,
      inputDecorationTheme: InputDecorationTheme(
        labelStyle:
            TextStyle(color: Color.fromRGBO(0, 129, 175, 1), fontSize: 20.0),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final double deviceWidth = MediaQuery.of(context).size.width;
    final double deviceHeight = MediaQuery.of(context).size.height;
    targetWidth = deviceWidth;
    targetHeight = deviceHeight;
    return Scaffold(
      backgroundColor: Color.fromRGBO(242, 242, 242, 1),
      key: _scaffoldKey,
      drawer: CustomSideDrawer(currentPage: 'home'),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Theme(
            data: _buildThemeData(),
            isMaterialAppTheme: true,
            child: CustomPaint(
              painter: ShapesPainter(),
              child: _buildBody(),
            ),
          ),
        ],
      ),
    );
  }
}

class ShapesPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();

    var path = Path();
    paint.color = Color.fromRGBO(33, 150, 243, 0.2);
    path.lineTo(size.width - size.width / 3.14, 0);
    path.quadraticBezierTo(size.width - size.width / 3.5, size.height / 3.5,
        size.width - size.width / 3, size.height / 2.4);
    path.quadraticBezierTo(size.width - size.width / 2.5, size.height / 1.6,
        size.width - size.width / 3.1, size.height);
    path.lineTo(size.width - size.width / 3, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);

    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
