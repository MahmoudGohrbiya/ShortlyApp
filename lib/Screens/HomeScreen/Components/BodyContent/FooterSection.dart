import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../AppComponents/rounded_button.dart';
import '../../../../AppComponents/rounded_input_field.dart';
import '../../../../Constants/constants.dart';
import '../../../../responsive.dart';

class FooterSection extends StatefulWidget {
  @override
  _FooterSection createState() => _FooterSection();
}

class _FooterSection extends State<FooterSection> {
  Color? ButtonColor = PrimaryCyanColor;

  bool? HavorValue = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Footer_BG_Color,
      ),
      child: Flex(
        direction:
            Responsive.isDesktop(context) ? Axis.horizontal : Axis.vertical,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: Responsive.isDesktop(context) ? 0 : size.height * 0.02,
          ),
          Container(
            child: SvgPicture.asset(
              "assets/icons/applogo.svg",
              color: Colors.white,
            ),
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: Responsive.isDesktop(context)
                      ? size.height * 0.1
                      : size.height * 0.02,
                ),
                Container(
                  child: Text(
                    "Features",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                Container(
                  child: Text(
                    "Link Shortening",
                    style: TextStyle(
                        color: NeutralGrayishVioletColor,
                        fontFamily: AppFontFamily),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.01,
                ),
                Container(
                  child: Text(
                    "Branded Links",
                    style: TextStyle(
                        color: NeutralGrayishVioletColor,
                        fontFamily: AppFontFamily),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.01,
                ),
                Container(
                  child: Text(
                    "Analytics",
                    style: TextStyle(
                        color: NeutralGrayishVioletColor,
                        fontFamily: AppFontFamily),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: Responsive.isDesktop(context)
                      ? size.height * 0.1
                      : size.height * 0.05,
                ),
                Container(
                  child: Text(
                    "Resources",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                Container(
                  child: Text(
                    "Blog",
                    style: TextStyle(
                        color: NeutralGrayishVioletColor,
                        fontFamily: AppFontFamily),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.01,
                ),
                Container(
                  child: Text(
                    "Developers",
                    style: TextStyle(
                        color: NeutralGrayishVioletColor,
                        fontFamily: AppFontFamily),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.01,
                ),
                Container(
                  child: Text(
                    "Support",
                    style: TextStyle(
                        color: NeutralGrayishVioletColor,
                        fontFamily: AppFontFamily),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: Responsive.isDesktop(context)
                      ? size.height * 0.1
                      : size.height * 0.05,
                ),
                Container(
                  child: Text(
                    "Company",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                Container(
                  child: Text(
                    "About",
                    style: TextStyle(
                        color: NeutralGrayishVioletColor,
                        fontFamily: AppFontFamily),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.01,
                ),
                Container(
                  child: Text(
                    "Our Team",
                    style: TextStyle(
                        color: NeutralGrayishVioletColor,
                        fontFamily: AppFontFamily),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.01,
                ),
                Container(
                  child: Text(
                    "Careers",
                    style: TextStyle(
                        color: NeutralGrayishVioletColor,
                        fontFamily: AppFontFamily),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.01,
                ),
                Container(
                  child: Text(
                    "Contacts",
                    style: TextStyle(
                        color: NeutralGrayishVioletColor,
                        fontFamily: AppFontFamily),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
                right: Responsive.isDesktop(context) ? size.width * 0.05 : 0),
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: size.height * 0.09,
                ),
                Container(
                  child: SvgPicture.asset(
                    "assets/icons/FB.svg",
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: size.width * 0.03,
                ),
                Container(
                  child: SvgPicture.asset(
                    "assets/icons/Twit.svg",
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: size.width * 0.03,
                ),
                Container(
                  child: SvgPicture.asset(
                    "assets/icons/Pain.svg",
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: size.width * 0.03,
                ),
                Container(
                  child: SvgPicture.asset(
                    "assets/icons/Inst.svg",
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      height: !Responsive.isDesktop(context)
          ? size.height * 0.89
          : size.height * 0.4,
      width: size.width,
    );
  }
}
