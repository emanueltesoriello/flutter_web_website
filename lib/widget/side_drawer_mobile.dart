import 'package:flutter/material.dart';

import '../constants/assets.dart';
import '../pages/home_page.dart';

class CustomSideDrawerMobile extends StatefulWidget {
  final String currentPage;
  CustomSideDrawerMobile({this.currentPage});
  @override
  State<StatefulWidget> createState() {
    return _CustomSideDrawerState(currentPage: currentPage);
  }
}

class _CustomSideDrawerState extends State<CustomSideDrawerMobile> {
  double targetWidth;
  double targetHeight;
  final String currentPage;
  _CustomSideDrawerState({this.currentPage});

  Widget _buildSideDrawer(BuildContext context) {
    return SizedBox(
      width: targetWidth * 0.5, //20.0,
      child: Drawer(
        child: Container(
          color: Color.fromRGBO(33, 150, 243, 1),
          child: Column(
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        child: Row(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(
                                  left: targetWidth / 38,
                                  right: targetWidth / 50,
                                  top: targetHeight / 45),
                              child: Image.asset(
                                Assets.logoWhite,
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
                                        color: Colors.white,
                                        fontSize: targetHeight / 70,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Montserrat'),
                                  ),
                                  Text(
                                    'TESORIELLO',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: targetHeight / 70,
                                        fontFamily: 'Montserrat'),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: targetHeight / 8,
                  ),
                  ListTile(
                      title: Center(
                        child: Text(
                          'This is just a demo, what do you expect? :)',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: targetWidth / 18,
                              fontFamily: 'Montserrat'),
                        ),
                      ),
                      onTap: () {}),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final double deviceWidth = MediaQuery.of(context).size.width;
    final double deviceHeight = MediaQuery.of(context).size.height;
    targetWidth = deviceWidth;
    targetHeight = deviceHeight;
    return _buildSideDrawer(context);
  }
}
