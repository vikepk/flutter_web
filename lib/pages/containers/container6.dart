import 'package:flutter/material.dart ';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:static_web/utils/colors.dart';

import '../../utils/constants.dart';

class Container6 extends StatefulWidget {
  const Container6({super.key});

  @override
  State<Container6> createState() => _Container6State();
}

class _Container6State extends State<Container6> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: MobileContainer6(),
      desktop: DesktopContainer6(),
    );
  }

//Mobile
  Widget MobileContainer6() {
    return Container(
      //margin: EdgeInsets.symmetric(horizontal: w! / 10, vertical: 20),
      child: Column(
        children: [
          Container(
            height: 530,
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage(
                illustration1,
              ),
              fit: BoxFit.contain,
            )),
          ),
          Text(
            "Track your \n Expenses to \n Save Money",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: w! / 10,
              fontWeight: FontWeight.bold,
              color: Colors.black,
              height: 1.2,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Helps you to organize your income and expenses",
            style: TextStyle(fontSize: 16, color: Colors.grey[400]),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 45,
            child: ElevatedButton.icon(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(AppColors.primary)),
              onPressed: () {},
              icon: Icon(Icons.arrow_drop_down_sharp),
              label: Text("Try free demo"),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text("— Web, iOs and Android",
              style: TextStyle(fontSize: 20, color: Colors.grey[400])),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }

//Desktop
  Widget DesktopContainer6() {
    return Container(
      height: 600,
      color: Colors.white,
      padding: EdgeInsets.only(top: 80),
      child: Container(
        color: Colors.white,
        // padding: EdgeInsets.only(right: 20, left: 20, top: 20),
        margin: EdgeInsets.symmetric(horizontal: w! / 10, vertical: 20),
        child: Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                      child: Container(
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "The Product we\n work with.",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                fontSize: w! / 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                height: 1.2),
                          ),
                          SizedBox(
                            width: 150,
                          ),
                          Text(
                            "Tellus lacus morbi sagittis lacus in.\n Amet nisl at mauris enim aumsan \nnisi, tincidunt vel. Enim ipsum, at\n quis ullamcorper eget ut",
                            style: TextStyle(
                                fontSize: 20, color: Colors.grey[400]),
                          ),
                        ]),
                  )),
                ],
              ),
              SizedBox(
                height: 80,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  WorkBox("Cross platform",
                      "Elit esse cillum dolore eu fugiat nulla pariatur"),
                  WorkBox("Cloud server",
                      "Elit esse cillum dolore eu fugiat nulla pariatur"),
                  WorkBox("Pure Javascript",
                      "Elit esse cillum dolore eu fugiat nulla pariatur")
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget WorkBox(String Head, String content) {
    return Container(
      height: 200,
      width: 200,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
                offset: Offset(1, 1), color: Colors.grey.withOpacity(0.2)),
          ]),
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        CircleAvatar(
          backgroundImage: AssetImage(illustration1),
        ),
        Text(
          Head,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Text(
          content,
          textAlign: TextAlign.center,
        )
      ]),
    );
  }
}
