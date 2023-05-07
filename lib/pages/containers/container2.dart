import 'package:flutter/material.dart ';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:static_web/utils/colors.dart';

import '../../utils/constants.dart';

class Container2 extends StatefulWidget {
  const Container2({super.key});

  @override
  State<Container2> createState() => _Container2State();
}

class _Container2State extends State<Container2> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: MobileContainer2(),
      desktop: DesktopContainer2(),
    );
  }

//Mobile
  Widget MobileContainer2() {
    return Container(
      // height: 900,
      width: double.infinity,
      decoration: BoxDecoration(color: AppColors.primary),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 20, right: 20, bottom: 0, top: 20),
            child: Container(
              height: 195,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(dashboard), fit: BoxFit.contain)),
            ),
          ),
          Container(
            width: double.infinity,
            color: Colors.white,
            padding: EdgeInsets.symmetric(vertical: 40),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                companyLogo(google),
                companyLogo(cocacola),
                companyLogo(fb),
                companyLogo(samsung)
              ],
            ),
          )
        ],
      ),
    );
  }

//Desktop
  Widget DesktopContainer2() {
    return Container(
      height: 900,
      width: double.infinity,
      decoration: BoxDecoration(color: AppColors.primary),
      child: Column(
        children: [
          Expanded(
            child: Stack(children: [
              Positioned(
                  top: -20,
                  right: -20,
                  child: Container(
                    height: 320,
                    width: 320,
                    decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage(vector1))),
                  )),
              Positioned(
                  bottom: -20,
                  left: -20,
                  child: Container(
                    height: 320,
                    width: 320,
                    decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage(vector2))),
                  )),
              Positioned(
                left: 43,
                right: 43,
                bottom: 0,
                child: Container(
                  height: 712,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(dashboard), fit: BoxFit.contain)),
                ),
              ),
            ]),
          ),
          Container(
            color: Colors.white,
            padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                companyLogo(google),
                companyLogo(cocacola),
                companyLogo(fb),
                companyLogo(samsung)
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget companyLogo(String image) {
    return Container(
      height: 36,
      width: 160,
      decoration: BoxDecoration(
          image:
              DecorationImage(image: AssetImage(image), fit: BoxFit.contain)),
    );
  }
}
