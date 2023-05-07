import "package:flutter/material.dart";
import "package:static_web/pages/containers/container2.dart";
import "package:static_web/pages/containers/container6.dart";
import "package:static_web/utils/constants.dart";
import 'package:static_web/widgets/navbar.dart';

import "containers/container1.dart";
import "containers/container3.dart";
import "containers/container4.dart";
import "containers/container5.dart";

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    w = MediaQuery.of(context).size.width;
    h = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
          child: Container(
        child: Column(children: [
          NavBar(),
          Container1(),
          Container2(),
          Container3(),
          Container4(),
          Container5(),
          Container6(),
        ]),
      )),
    );
  }
}
