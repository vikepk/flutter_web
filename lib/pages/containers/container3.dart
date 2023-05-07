import 'package:flutter/material.dart ';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:static_web/utils/colors.dart';

import '../../utils/constants.dart';
import '../../widgets/commoncontainer.dart';

class Container3 extends StatefulWidget {
  const Container3({super.key});

  @override
  State<Container3> createState() => _Container3State();
}

class _Container3State extends State<Container3> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: MobileContainer3(),
      desktop: DesktopContainer3(),
    );
  }

//Mobile
  Widget MobileContainer3() {
    return CommonMobileContainer(
        "Alwalys online",
        "Real-time \nsupport\n with cloud",
        "Tellus lacus morbi sagittis lacus in. Amet nisl at mauris enim accumsan nisi, tincidunt vel. Enim ipsum, amet quis ullamcorper eget ut.",
        illustration1);
  }

//Desktop
  Widget DesktopContainer3() {
    return CommonContainer(
        "Alwalys online",
        "Real-time \nsupport\n with cloud",
        "Tellus lacus morbi sagittis lacus in. Amet nisl at \nmauris enim accumsan nisi, tincidunt vel. Enim ipsum, amet quis ullamcorper eget ut.",
        illustration1,
        false);
  }
}
