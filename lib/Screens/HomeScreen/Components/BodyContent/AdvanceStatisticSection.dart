import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../../../Constants/constants.dart';
import '../../../../responsive.dart';

class AdvanceStatisticSection extends StatefulWidget {
  @override
  _AdvanceStatisticSection createState() => _AdvanceStatisticSection();
}

class _AdvanceStatisticSection extends State<AdvanceStatisticSection> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.center,
      child: Container(
        height: Responsive.isDesktop(context)
            ? size.height * 0.9
            : size.height * 1.3,
        width: size.width,
        color: Bg_ShorLinkList_Color,
        child: Container(
          margin: EdgeInsets.only(
              left: size.width * 0.1,
              right: size.width * 0.1,
              top: size.height * 0.07),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Text(
                      "Advanced Statistics",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          fontFamily: AppFontFamily),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(
                    horizontal: Responsive.isDesktop(context)
                        ? size.width * 0.2
                        : size.width * 0.1),
                child: Text(
                  "Track how your links are performing across the web with our davanced statistics dashboard.",
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.black.withOpacity(0.5),
                      fontFamily: AppFontFamily),
                  textAlign: TextAlign.center,
                ),
              ),
              !Responsive.isDesktop(context)
                  ? SizedBox(
                      height: size.height * 0.03,
                    )
                  : SizedBox(),
              Container(
                child: Flex(
                  direction: Responsive.isDesktop(context)
                      ? Axis.horizontal
                      : Axis.vertical,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: Responsive.isDesktop(context)
                              ? size.height * 0.31
                              : size.height * 0.24,
                          width: Responsive.isDesktop(context)
                              ? size.width * 0.22
                              : size.width * 0.8,
                          color: Colors.white,
                          padding: EdgeInsets.all(20),
                          margin: EdgeInsets.only(top: size.height * 0.07),
                          child: Column(
                            children: [
                              SizedBox(
                                height: size.height * 0.04,
                              ),
                              Row(
                                mainAxisAlignment: Responsive.isDesktop(context)
                                    ? MainAxisAlignment.start
                                    : MainAxisAlignment.center,
                                children: [
                                  Container(
                                    child: Text(
                                      "Brand Recognition",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: size.height * 0.02,
                              ),
                              Container(
                                child: Text(
                                  "Boost our brand recognition with each click. Generic links don't mean c thing. branded links neip Instil conidence in our conten",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.black.withOpacity(0.5),
                                      fontFamily: AppFontFamily),
                                  textAlign: Responsive.isDesktop(context)
                                      ? TextAlign.start
                                      : TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 70,
                              width: 70,
                              padding: EdgeInsets.all(10),
                              margin: EdgeInsets.only(
                                  left: Responsive.isDesktop(context) ? 20 : 0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(140),
                                color: PrimaryDarkVioletColor,
                              ),
                              child: Container(
                                height: 60,
                                width: 60,
                                padding: EdgeInsets.all(10),
                                child: Image.asset(
                                  "assets/icons/Advance_Icon1.png",
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Container(),
                    Container(
                      width: Responsive.isDesktop(context)
                          ? size.width * 0.04
                          : 10,
                      height: Responsive.isDesktop(context)
                          ? 10
                          : size.height * 0.04,
                      color: PrimaryCyanColor,
                    ),
                    Stack(
                      children: [
                        Container(
                          height: Responsive.isDesktop(context)
                              ? size.height * 0.31
                              : size.height * 0.24,
                          width: Responsive.isDesktop(context)
                              ? size.width * 0.22
                              : size.width * 0.8,
                          color: Colors.white,
                          padding: EdgeInsets.all(20),
                          margin: EdgeInsets.only(
                              top: Responsive.isDesktop(context)
                                  ? size.height * 0.15
                                  : size.height * 0.07),
                          child: Column(
                            children: [
                              SizedBox(
                                height: size.height * 0.04,
                              ),
                              Row(
                                mainAxisAlignment: Responsive.isDesktop(context)
                                    ? MainAxisAlignment.start
                                    : MainAxisAlignment.center,
                                children: [
                                  Container(
                                    child: Text(
                                      "Detailed Records",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: size.height * 0.02,
                              ),
                              Container(
                                child: Text(
                                  "Gain insights into who is clicking vour links. Knowing when and where peopie engg yur helps inform better decisions.",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.black.withOpacity(0.5),
                                      fontFamily: AppFontFamily),
                                  textAlign: Responsive.isDesktop(context)
                                      ? TextAlign.start
                                      : TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 70,
                              width: 70,
                              padding: EdgeInsets.all(10),
                              margin: EdgeInsets.only(
                                  left: Responsive.isDesktop(context) ? 20 : 0,
                                  top: Responsive.isDesktop(context)
                                      ? size.height * 0.07
                                      : 0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(140),
                                color: PrimaryDarkVioletColor,
                              ),
                              child: Container(
                                height: 60,
                                width: 60,
                                padding: EdgeInsets.all(10),
                                child: Image.asset(
                                  "assets/icons/Advance_Icon2.png",
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    Container(
                      width: Responsive.isDesktop(context)
                          ? size.width * 0.04
                          : 10,
                      height: Responsive.isDesktop(context)
                          ? 10
                          : size.height * 0.04,
                      color: PrimaryCyanColor,
                    ),
                    Container(),
                    Stack(
                      children: [
                        Container(
                          height: Responsive.isDesktop(context)
                              ? size.height * 0.31
                              : size.height * 0.24,
                          width: Responsive.isDesktop(context)
                              ? size.width * 0.22
                              : size.width * 0.8,
                          color: Colors.white,
                          padding: EdgeInsets.all(20),
                          margin: EdgeInsets.only(
                              top: Responsive.isDesktop(context)
                                  ? size.height * 0.23
                                  : size.height * 0.07),
                          child: Column(
                            children: [
                              SizedBox(
                                height: size.height * 0.04,
                              ),
                              Row(
                                mainAxisAlignment: Responsive.isDesktop(context)
                                    ? MainAxisAlignment.start
                                    : MainAxisAlignment.center,
                                children: [
                                  Container(
                                    child: Text(
                                      "Fully Customizable",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: size.height * 0.02,
                              ),
                              Container(
                                child: Text(
                                  "Improve brand awareness and content discoverability through customizable links supercharginc audiencenggm",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.black.withOpacity(0.5),
                                      fontFamily: AppFontFamily),
                                  textAlign: Responsive.isDesktop(context)
                                      ? TextAlign.start
                                      : TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 70,
                              width: 70,
                              padding: EdgeInsets.all(10),
                              margin: EdgeInsets.only(
                                  left: Responsive.isDesktop(context) ? 20 : 0,
                                  top: Responsive.isDesktop(context)
                                      ? size.height * 0.15
                                      : 0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(140),
                                color: PrimaryDarkVioletColor,
                              ),
                              child: Container(
                                height: 60,
                                width: 60,
                                padding: EdgeInsets.all(10),
                                child: Image.asset(
                                  "assets/icons/Advance_Icon3.png",
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
