import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../AppComponents/rounded_button.dart';
import '../../../../AppComponents/rounded_input_field.dart';
import '../../../../Constants/constants.dart';
import '../../../../responsive.dart';

class ShortLinkSection extends StatefulWidget {
  @override
  _ShortLinkSection createState() => _ShortLinkSection();
}

class _ShortLinkSection extends State<ShortLinkSection> {
  Color? ButtonColor = PrimaryCyanColor;

  TextEditingController LinkController = new TextEditingController();
  bool? CheckEmpty = false;

  List<Map<String, dynamic>> CardShortly = [];

  @override
  void initState() {
    super.initState();
    _getSavedCard();
  }

  _getSavedCard() async {
    // await IdentityManager().getToken().then((value) => token = value!);
    // await IdentityManager()
    //     .getLoggedUserId()
    //     .then((value) => UserId = int.parse(value!));
    // _HomePages_cubit.GetAgendaUser(token!, UserId!);

    CardShortly.add({
      "Id": 1,
      "LongLink": "https://www.frontendmentor.io"
          "",
      "index": 0,
      "ShortLink": "https://rel.ink/k4lKyk",
      "Selected": false
    });
    CardShortly.add({
      "Id": 2,
      "LongLink": "https://www.frontendmentor.io"
          "",
      "index": 1,
      "ShortLink": "https://rel.ink/k4lKyk",
      "Selected": false
    });
    CardShortly.add({
      "Id": 3,
      "LongLink": "https://www.frontendmentor.io"
          "",
      "index": 2,
      "ShortLink": "https://rel.ink/k4lKyk",
      "Selected": false
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.center,
      child: Stack(
        children: [
          Container(
            height: size.height *0.4 ,
            margin: EdgeInsets.only(top: size.height * 0.08),
            width: size.width,
            color: Bg_ShorLinkList_Color,
            child: Container(
              margin: EdgeInsets.only(
                  top: Responsive.isDesktop(context)
                      ? size.height * 0.14
                      : size.height * 0.2,
                  left: size.width * 0.1,
                  right: size.width * 0.1),
              child: ListView.builder(
                itemCount: 20,
                itemBuilder: (context, index) {
                  return Container(
                    child: Card(
                      child: Container(
                        padding: EdgeInsets.all(10),
                        child: Flex(
                          direction: Responsive.isDesktop(context)
                              ? Axis.horizontal
                              : Axis.vertical,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Text(
                                CardShortly[0]['LongLink'],
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black.withOpacity(0.6)),
                              ),
                              padding: EdgeInsets.symmetric(vertical: 5),
                            ),
                            !Responsive.isDesktop(context)
                                ? Divider()
                                : SizedBox(),
                            Container(
                                child: Flex(
                              direction: Responsive.isDesktop(context)
                                  ? Axis.horizontal
                                  : Axis.vertical,
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(vertical: 5),
                                  child: Text(
                                    CardShortly[0]['ShortLink'],
                                    style: TextStyle(color: PrimaryCyanColor),
                                  ),
                                ),
                                !Responsive.isDesktop(context)
                                    ? SizedBox(
                                        height: 10,
                                      )
                                    : SizedBox(
                                        width: 15,
                                      ),
                                RoundedButton(
                                  color: CardShortly[0]['Selected'] == false
                                      ? ButtonColor
                                      : Colors.black,
                                  enabled: true,
                                  isLoading: false,
                                  buttonName:
                                      CardShortly[0]['Selected'] == false
                                          ? "Copy"
                                          : "Copied!",
                                  height: 33,
                                  cornerRadius: 10,
                                  width: Responsive.isDesktop(context)
                                      ? 100
                                      : size.width * 0.66,
                                  press: () {
                                    setState(() {
                                      for (int i = 0;
                                          i < CardShortly.length;
                                          i++)
                                        CardShortly[i]['Selected'] = false;

                                      CardShortly[0]['Selected'] = true;
                                      Clipboard.setData(ClipboardData(
                                          text: CardShortly[0]
                                              ['ShortLink']));
                                    });
                                  },
                                ),
                              ],
                            )),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          Container(
            height: size.height *0.4 ,
            margin: EdgeInsets.only(top: size.height * 0.08),
            width: size.width,
            color: Bg_ShorLinkList_Color,
            child: Container(
              margin: EdgeInsets.only(
                  top: Responsive.isDesktop(context)
                      ? size.height * 0.14
                      : size.height * 0.2,
                  left: size.width * 0.1,
                  right: size.width * 0.1),
              child: ListView.builder(
                itemCount: CardShortly.length,
                itemBuilder: (context, index) {
                  return Container(
                    child: Card(
                      child: Container(
                        padding: EdgeInsets.all(10),
                        child: Flex(
                          direction: Responsive.isDesktop(context)
                              ? Axis.horizontal
                              : Axis.vertical,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Text(
                                CardShortly[index]['LongLink'],
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black.withOpacity(0.6)),
                              ),
                              padding: EdgeInsets.symmetric(vertical: 5),
                            ),
                            !Responsive.isDesktop(context)
                                ? Divider()
                                : SizedBox(),
                            Container(
                                child: Flex(
                                  direction: Responsive.isDesktop(context)
                                      ? Axis.horizontal
                                      : Axis.vertical,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.symmetric(vertical: 5),
                                      child: Text(
                                        CardShortly[index]['ShortLink'],
                                        style: TextStyle(color: PrimaryCyanColor),
                                      ),
                                    ),
                                    !Responsive.isDesktop(context)
                                        ? SizedBox(
                                      height: 10,
                                    )
                                        : SizedBox(
                                      width: 15,
                                    ),
                                    RoundedButton(
                                      color: CardShortly[index]['Selected'] == false
                                          ? ButtonColor
                                          : Colors.black,
                                      enabled: true,
                                      isLoading: false,
                                      buttonName:
                                      CardShortly[index]['Selected'] == false
                                          ? "Copy"
                                          : "Copied!",
                                      height: 33,
                                      cornerRadius: 10,
                                      width: Responsive.isDesktop(context)
                                          ? 100
                                          : size.width * 0.66,
                                      press: () {
                                        setState(() {
                                          for (int i = 0;
                                          i < CardShortly.length;
                                          i++)
                                            CardShortly[i]['Selected'] = false;

                                          CardShortly[index]['Selected'] = true;
                                          Clipboard.setData(ClipboardData(
                                              text: CardShortly[index]
                                              ['ShortLink']));
                                        });
                                      },
                                    ),
                                  ],
                                )),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: PrimaryDarkVioletColor,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flex(
                      direction: Responsive.isDesktop(context)
                          ? Axis.horizontal
                          : Axis.vertical,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              children: [
                                Container(
                                  child: RoundedInputField(
                                    height: 45,
                                    width: !Responsive.isDesktop(context)
                                        ? size.width * 0.66
                                        : size.width * 0.52,
                                    textEditingController: LinkController,
                                    hintText: "shorten a link here.",
                                    keyboardtype: TextInputType.text,
                                    hintColor: Colors.black.withOpacity(0.4),
                                  ),
                                  margin: EdgeInsets.symmetric(
                                      horizontal: size.width * 0.02),
                                ),
                                !Responsive.isDesktop(context)
                                    ? Container(
                                        alignment: Alignment.topLeft,
                                        margin: EdgeInsets.symmetric(
                                            horizontal: size.width * 0.1,
                                            vertical: size.height * 0.01),
                                        child: Visibility(
                                          visible: CheckEmpty!,
                                          child: Text(
                                            "Please add a link",
                                            style: TextStyle(
                                                color: SecondaryRedColor,
                                                fontFamily: AppFontFamily),
                                          ),
                                        ),
                                      )
                                    : Container()
                              ],
                            )
                          ],
                        ),
                        !Responsive.isDesktop(context)
                            ? SizedBox(
                                height: size.height * 0.01,
                              )
                            : SizedBox(),
                        RoundedButton(
                          color: ButtonColor,
                          enabled: true,
                          isLoading: false,
                          buttonName: "Shorten it!",
                          height: 48,
                          cornerRadius: 10,
                          width: Responsive.isDesktop(context)
                              ? 140
                              : size.width * 0.66,
                          press: () {
                            setState(() {
                              CheckEmpty = !CheckEmpty!;
                            });
                          },
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
                      mainAxisAlignment: MainAxisAlignment.center,
                    ),
                    Responsive.isDesktop(context)
                        ? Container(
                            alignment: Alignment.topLeft,
                            margin: EdgeInsets.symmetric(
                                horizontal: size.width * 0.1,
                                vertical: size.height * 0.01),
                            child: Visibility(
                              visible: CheckEmpty!,
                              child: Text(
                                "Please add a link",
                                style: TextStyle(
                                    color: SecondaryRedColor,
                                    fontFamily: AppFontFamily),
                              ),
                            ),
                          )
                        : Container()
                  ],
                ),
                height: !Responsive.isDesktop(context)
                    ? size.height * 0.25
                    : size.height * 0.2,
                width: size.width * 0.8,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
