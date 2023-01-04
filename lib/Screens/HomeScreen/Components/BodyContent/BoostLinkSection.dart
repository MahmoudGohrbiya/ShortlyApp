import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../AppComponents/rounded_button.dart';
import '../../../../AppComponents/rounded_input_field.dart';
import '../../../../Constants/constants.dart';
import '../../../../responsive.dart';

class BoostLinkSection extends StatefulWidget {
  @override
  _BoostLinkSection createState() => _BoostLinkSection();
}

class _BoostLinkSection extends State<BoostLinkSection> {
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
      child: Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: PrimaryDarkVioletColor,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Text(
                        "Boost your links today",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            fontFamily: AppFontFamily),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    RoundedButton(
                      color:
                          HavorValue == true ? Hover_Button_Color : ButtonColor,
                      enabled: true,
                      isLoading: false,
                      buttonName: "Get Started",
                      height: size.height * 0.05,
                      width: 140,
                      press: () {},
                      nHover: (value) {
                        setState(() {
                          HavorValue = value;
                        });
                      },
                    ),
                  ],
                ),
                height: !Responsive.isDesktop(context)
                    ? size.height * 0.25
                    : size.height * 0.25,
                width: size.width,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
