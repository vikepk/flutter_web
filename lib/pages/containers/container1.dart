import 'package:flutter/material.dart ';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:static_web/utils/colors.dart';

import '../../utils/constants.dart';

class Container1 extends StatefulWidget {
  const Container1({super.key});

  @override
  State<Container1> createState() => _Container1State();
}

class _Container1State extends State<Container1> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: MobileContainer1(),
      desktop: DesktopContainer1(),
    );
  }

  Widget MobileContainer1() {
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

  Widget DesktopContainer1() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: w! / 10, vertical: 20),
      child: Row(
        children: [
          Expanded(
              child: Container(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                "Track your \nExpenses to \nSave Money",
                style: TextStyle(
                    fontSize: w! / 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    height: 1.2),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Helps you to organize your income and expenses",
                style: TextStyle(fontSize: 20, color: Colors.grey[400]),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
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
                    width: 20,
                  ),
                  Text("— Web, iOs and Android",
                      style: TextStyle(fontSize: 20, color: Colors.grey[400]))
                ],
              )
            ]),
          )),
          Expanded(
              child: Container(
            height: 530,
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage(
                illustration1,
              ),
              fit: BoxFit.contain,
            )),
          ))
        ],
      ),
    );
  }
}
