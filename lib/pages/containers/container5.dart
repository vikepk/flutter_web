import 'package:flutter/material.dart ';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:static_web/utils/colors.dart';

import '../../utils/constants.dart';
import '../../widgets/commoncontainer.dart';

class Container5 extends StatefulWidget {
  const Container5({super.key});

  @override
  State<Container5> createState() => _Container5State();
}

class _Container5State extends State<Container5> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: MobileContainer5(),
      desktop: DesktopContainer5(),
    );
  }

//Mobile
  Widget MobileContainer5() {
    return CommonMobileContainer(
        "Use anytime",
        "Use anytime \nwhen you \nneed",
        "Tellus lacus morbi sagittis lacus in. Amet nisl at mauris enim accumsan nisi, tincidunt vel. Enim ipsum, amet quis ullamcorper eget ut.",
        illustration3);
  }

//Desktop
  Widget DesktopContainer5() {
    return CommonContainer(
        "Use anytime",
        "Use anytime \nwhen you \nneed",
        "Tellus lacus morbi sagittis lacus in. Amet nisl at\n mauris enim accumsan nisi, tincidunt vel. Enim\n ipsum, amet quis ullamcorper eget ut.",
        illustration3,
        false);
  }
}
