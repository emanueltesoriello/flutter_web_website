import 'package:flutter/material.dart';

import '../pages/desktop/home_page.dart';
import '../pages/mobile/home_page.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  double targetWidth;
  double targetHeight;


  @override
  Widget build(BuildContext context) {
    final double deviceWidth = MediaQuery.of(context).size.width;
    final double deviceHeight = MediaQuery.of(context).size.height;
    targetWidth = deviceWidth;
    targetHeight = deviceHeight;
    return targetWidth < 820 ? HomePageMobile() : HomePageDesktop();

  }
}