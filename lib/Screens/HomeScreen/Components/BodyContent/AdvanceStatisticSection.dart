import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../AppComponents/rounded_button.dart';
import '../../../../AppComponents/rounded_input_field.dart';
import '../../../../Constants/constants.dart';
import '../../../../Utils/HexColor.dart';
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
        height: size.height * 0.6,
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
                          fontSize: 36,
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


              Container(
                child:Row(
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: size.height*0.27,
                          width: size.width*0.2,
                          color: Colors.white,
                          margin: EdgeInsets.only(top: size.height*0.07),
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          margin: EdgeInsets.only(left: 20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(140),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(1, 1),
                                color: HexColor("#933AFE").withOpacity(0.2),
                                blurRadius: 10,
                              )
                            ],
                          ),
                          child: ClipOval(
                            child: BackdropFilter(
                              filter:
                              ImageFilter.blur(sigmaX: 3, sigmaY: 3),
                              child: CircleAvatar(
                                radius: size.width * 0.05,
                                backgroundColor: HexColor("#F2F4F6"),
                                backgroundImage: "true" == "true"
                                    ? NetworkImage(
                                    "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg")
                                    : AssetImage(
                                  "images/usericonbg.png",)
                                as ImageProvider,
                              ),
                            ),
                          ),
                        ),

                      ],
                    ),
                    Container(),
                    Stack(),
                    Container(),
                    Stack(),
                  ],
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
