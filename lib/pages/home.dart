import "package:flutter/material.dart";
import "package:static_web/utils/constants.dart";
import 'package:static_web/widgets/navbar.dart';

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
        ]),
      )),
    );
  }
}
