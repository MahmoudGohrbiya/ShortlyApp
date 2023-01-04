import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../AppComponents/rounded_button.dart';
import '../../../../Constants/constants.dart';
import '../../../../responsive.dart';


class GetStartSection extends StatefulWidget {
  @override
  _GetStartSection createState() => _GetStartSection();
}

class _GetStartSection extends State<GetStartSection> {
  Color? ButtonColor = PrimaryCyanColor;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return  Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [



            Responsive.isDesktop(context)?
            Expanded(
              child: Column(
                children: [
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: size.width * 0.5,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: size.height * 0.02,
                              ),
                              Text(
                                "More than just shorter links",
                                style: TextStyle(
                                    fontSize: 60,
                                    fontWeight: FontWeight.w600,fontFamily: AppFontFamily),
                              ),
                              SizedBox(
                                height: size.height * 0.02,
                              ),
                              Text(
                                "Build your brand's recognition and get detailed insights on how your links are performing.",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black.withOpacity(0.5),fontFamily: AppFontFamily),
                              ),
                              SizedBox(
                                height: size.height * 0.02,
                              ),
                              RoundedButton(
                                color: ButtonColor,
                                enabled: true,
                                isLoading: false,
                                buttonName: "Get Started",
                                height: size.height * 0.05,
                                width: 130,
                                nHover: (value) {
                                  setState(() {
                                    ButtonColor = Colors.black;
                                    print("truuu");
                                    print(value);
                                    if (value == true) {
                                      print("truuu");
                                    }
                                  });
                                },
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: size.width * 0.3,
                          child: SvgPicture.asset(
                              "assets/icons/firstsectionIcon.svg"),
                        ),
                      ],
                    ),
                    height: size.height * 0.47,
                    // color: Colors.amber,
                  ),
                  // Search(),
                  SizedBox(height: kDefaultPadding),
                  // Categories(),
                  SizedBox(height: kDefaultPadding),
                  // RecentPosts(),
                ],
              ),
            ):

            Expanded(
              child: Column(
                children: [
                  Container(


                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          // width: size.width * 0.5,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [


                              Container(
                                // width: size.width * 0.3,
                                child: SvgPicture.asset(
                                  "assets/icons/firstsectionIcon.svg",height: size.height*0.3,width: size.width,fit: BoxFit.fitWidth,),
                              ),
                              SizedBox(
                                height: size.height * 0.04,
                              ),
                              Text(
                                "More than just shorter links",
                                style: TextStyle(
                                    fontSize: 45,
                                    fontWeight: FontWeight.bold,fontFamily: AppFontFamily),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(
                                height: size.height * 0.04,
                              ),
                              Text(
                                "Build your brand's recognition and get detailed insights on how your links are performing.",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black.withOpacity(0.5),
                                    fontFamily: AppFontFamily

                                ),
                                textAlign: TextAlign.center,

                              ),
                              SizedBox(
                                height: size.height * 0.04,
                              ),
                              RoundedButton(
                                color: ButtonColor,
                                enabled: true,
                                isLoading: false,
                                buttonName: "Get Started",
                                height: size.height * 0.08,
                                width: size.width * 0.5,
                                nHover: (value) {
                                  setState(() {
                                    ButtonColor = Colors.black;
                                    print("truuu");
                                    print(value);
                                    if (value == true) {
                                      print("truuu");
                                    }
                                  });
                                },
                              ),
                            ],
                          ),
                        ),

                      ],
                    ),
                    height: size.height*0.84 ,
                    // color: Colors.amber,
                    width: size.width,
                  ),
                  // Search(),
                  SizedBox(height: kDefaultPadding),
                  // Categories(),
                  SizedBox(height: kDefaultPadding),
                  // RecentPosts(),
                ],
              ),
            ),



          ],

    );

  }
}