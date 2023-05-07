import "package:flutter/material.dart";
import "package:static_web/utils/colors.dart";

import "../utils/constants.dart";

Widget CommonContainer(s1, s2, s3, image, bool imageLeft) {
  return Container(
    color: Colors.white,
    padding: EdgeInsets.symmetric(horizontal: w! / 10, vertical: 30),
    child: Row(children: [
      imageLeft
          ? Expanded(
              child: Container(
              height: 530,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(image), fit: BoxFit.contain)),
            ))
          : Container(),
      Expanded(
          child: Column(
        crossAxisAlignment:
            imageLeft ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Text(
            s1.toUpperCase(),
            style: TextStyle(
              color: Colors.grey[400],
              fontSize: 16,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            s2,
            textAlign: imageLeft ? TextAlign.right : TextAlign.left,
            style: TextStyle(
              fontSize: w! / 20,
              fontWeight: FontWeight.bold,
              height: 1.1,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            s3,
            textAlign: imageLeft ? TextAlign.right : TextAlign.left,
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.grey[400]),
          ),
          SizedBox(
            height: 10,
          ),
          TextButton.icon(
              onPressed: () {},
              icon: Icon(
                Icons.arrow_forward_ios,
                color: AppColors.primary,
                size: 20,
              ),
              label: Text(
                "Learn More",
                style: TextStyle(color: AppColors.primary),
              ))
        ],
      )),
      !imageLeft
          ? Expanded(
              child: Container(
              height: 530,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(image), fit: BoxFit.contain)),
            ))
          : Container(),
    ]),
  );
}

Widget CommonMobileContainer(
  s1,
  s2,
  s3,
  image,
) {
  return Container(
    color: Colors.white,
    padding: EdgeInsets.symmetric(horizontal: w! / 10, vertical: 30),
    child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
      Container(
        height: 200,
        decoration: BoxDecoration(
            image:
                DecorationImage(image: AssetImage(image), fit: BoxFit.contain)),
      ),
      SizedBox(
        height: 20,
      ),
      Text(
        s1.toUpperCase(),
        style: TextStyle(
          color: Colors.grey[400],
          fontSize: 14,
        ),
      ),
      SizedBox(
        height: 10,
      ),
      Text(
        s2,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: w! / 10,
          fontWeight: FontWeight.bold,
          height: 1.1,
        ),
      ),
      SizedBox(
        height: 10,
      ),
      Text(
        s3,
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 16, fontWeight: FontWeight.bold, color: Colors.grey[400]),
      ),
      SizedBox(
        height: 20,
      ),
      TextButton.icon(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_forward_ios,
            color: AppColors.primary,
            size: 20,
          ),
          label: Text(
            "Learn More",
            style: TextStyle(color: AppColors.primary),
          )),
    ]),
  );
}
