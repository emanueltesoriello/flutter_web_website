import 'package:emanueltesoriello/constants/fonts.dart';
import 'package:flutter/material.dart';

import '../../constants/assets.dart';
import '../../widget/side_drawer_mobile.dart';
import '../../functions/open_url.dart';

class HomePageMobile extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePageMobile> {
  double targetWidth;
  double targetHeight;
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  int bodyPages = 0;

  Widget _row1() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(
                  left: targetWidth / 38,
                  right: targetWidth / 50,
                  top: targetHeight / 45),
              child: Image.asset(
                Assets.logoBlack,
                height: targetHeight / 18,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: targetHeight / 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'EMANUEL',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: targetHeight / 70,
                        fontFamily: Fonts.Montserrat),
                  ),
                  Text(
                    'TESORIELLO',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: targetHeight / 70,
                        fontFamily: Fonts.Montserrat),
                  ),
                ],
              ),
            ),
          ],
        ),
        Container(
          margin: EdgeInsets.only(top: targetHeight / 45),
          child: IconButton(
            icon: Icon(Icons.menu),
            iconSize: targetWidth / 20,
            color: Colors.black,
            onPressed: () {
              print('Hamburger menu pressed');
              _scaffoldKey.currentState.openDrawer();
            },
          ),
        ),
      ],
    );
  }

  Widget _col2A() {
    return Container(
      margin: EdgeInsets.only(
        left: targetWidth / 38,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Who I am',
            maxLines: 3,
            style: TextStyle(
                color: Colors.black,
                fontSize: targetWidth / 18,
                fontFamily: Fonts.Montserrat),
          ),
          SizedBox(
            height: targetHeight / 35,
          ),
          Container(
            width: targetWidth / 1.4,
            child: Text(
              "Since I was a child, I've always dreamed to work in the IT field in order to use my ideas and creativity.\nI loved computers and the way they changed our everyday life.\n\n" +
                  "Currently I am a “Engineering as Marketing” developer specialized in web & mobile app development for IoT/Industry 4.0 world.\n\n" +
                  "My favorite technologies are Google Flutter and GOlang, but I like to experiment new and innovative technologies, to increase my skills and my desire to innovate more and more!",
              style: TextStyle(
                color: Colors.black,
                fontSize: targetHeight / 30,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _col2B() {
    return Container(
      margin: EdgeInsets.only(
        right: targetWidth / 38,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          GestureDetector(
            onTap: () {
              openUrl(
                  'https://www.linkedin.com/in/emanuel-tesoriello-developer/');
            },
            child: Image.asset(
              Assets.linkedin,
              height: targetHeight / 20,
              fit: BoxFit.cover,
              color: Colors.black,
            ),
          ),
          SizedBox(
            height: targetHeight / 40,
          ),
          GestureDetector(
            onTap: () {
              openUrl('https://www.facebook.com/EmanuelTesorielloDev');
            },
            child: Image.asset(
              Assets.facebook,
              height: targetHeight / 20,
              fit: BoxFit.cover,
              color: Colors.black,
            ),
          ),
          SizedBox(
            height: targetHeight / 40,
          ),
          GestureDetector(
            onTap: () {
              openUrl('https://github.com/emanueltesoriello');
            },
            child: Image.asset(
              Assets.github,
              height: targetHeight / 20,
              fit: BoxFit.cover,
              color: Colors.black,
            ),
          ),
          SizedBox(
            height: targetHeight / 40,
          ),
          GestureDetector(
            onTap: () {
              openUrl('https://twitter.com/etesoriello');
            },
            child: Image.asset(
              Assets.twitter,
              height: targetHeight / 20,
              fit: BoxFit.cover,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }

  Widget _row3() {
    return Container(
      alignment: Alignment.center,
      width: targetWidth,
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
            fontSize: targetHeight / 35,
            fontWeight: FontWeight.bold,
            fontFamily: Fonts.Montserrat),
      ),
    );
  }

  Widget _buildBodyMobile() {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Container(
          width: targetWidth,
          height: targetHeight / 16,
          child: _row1(),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              width: targetWidth / 1.3,
              height: targetHeight -
                  (2 * (targetHeight / 16)) -
                  (targetHeight / 20),
              margin: EdgeInsets.only(top: targetHeight / 20),
              child: Center(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: _col2A(),
                ),
              ),
            ),
            Container(
              width: targetWidth - (targetWidth / 1.3),
              height: targetHeight -
                  (2 * (targetHeight / 16)) -
                  (targetHeight / 20),
              child: _col2B(),
            ),
          ],
        ),
        Container(
            width: targetWidth, height: targetHeight / 16, child: _row3()),
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
    return //targetWidth < 768 ? HomePageMobile() : HomePageDesktop();
        Scaffold(
      backgroundColor: Color.fromRGBO(242, 242, 242, 1),
      key: _scaffoldKey,
      drawer: CustomSideDrawerMobile(currentPage: 'home'),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Theme(
            data: _buildThemeData(),
            isMaterialAppTheme: true,
            child: _buildBodyMobile(),
          ),
        ],
      ),
    );
  }
}
