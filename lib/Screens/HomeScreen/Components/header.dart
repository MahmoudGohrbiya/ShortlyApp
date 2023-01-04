import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:shortly/Constants/constants.dart';
import 'package:shortly/Screens/HomeScreen/Components/web_menu.dart';

import '../../../AppComponents/rounded_button.dart';
import '../../../controllers/MenuController.dart';
import '../../../responsive.dart';

class Header extends StatefulWidget {
  @override
  _Header createState() => _Header();
}

class _Header extends State<Header> {
  final MenuController _controller = Get.put(MenuController());

  Color? ButtonColor = PrimaryCyanColor;

  bool? isHover = false;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Container(
      width: double.infinity,
      color: Colors.white,
      child: SafeArea(
        child: Column(
          children: [
            Container(
              constraints: BoxConstraints(maxWidth: kMaxWidth),
              padding: EdgeInsets.all(kDefaultPadding),
              child: Column(
                children: [
                  if (Responsive.isDesktop(context))
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Row(
                            children: [
                              SvgPicture.asset("assets/icons/applogo.svg"),
                              WebMenu(),
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Text(
                                "Login",
                                style: TextStyle(
                                    color: Colors.black.withOpacity(0.5),
                                    fontWeight: FontWeight.w600,
                                    fontFamily: AppFontFamily),
                              ),
                              SizedBox(
                                width: size.width * 0.01,
                              ),
                              RoundedButton(
                                color: ButtonColor,
                                enabled: true,
                                isLoading: false,
                                buttonName: "sign Up",
                                height: size.height * 0.05,
                                width: 140,
                                press: () {},
                                nHover: (value) {
                                  setState(() {
                                    value == true
                                        ? ButtonColor = Hover_Button_Color
                                        : ButtonColor = PrimaryCyanColor;
                                  });
                                },
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  if (!Responsive.isDesktop(context))
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SvgPicture.asset("assets/icons/applogo.svg"),
                        IconButton(
                          icon: Icon(
                            Icons.menu,
                            color: NeutralGrayishVioletColor,
                            size: 26,
                          ),
                          onPressed: () {
                            _controller.openOrCloseDrawer();
                          },
                        ),
                      ],
                    ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
