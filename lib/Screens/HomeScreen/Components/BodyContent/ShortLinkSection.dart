import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shortly/AppStates/ShortyStats/Shortly_State.dart';
import 'package:shortly/Blocs/AppBlocs/ShortlyBlocs/Shortly_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shortly/Helpers/AppPref.dart';
import '../../../../AppComponents/rounded_button.dart';
import '../../../../AppComponents/rounded_input_field.dart';
import '../../../../Constants/constants.dart';
import '../../../../responsive.dart';
import 'package:shortly/Utils/appSnackbar.dart';

class ShortLinkSection extends StatefulWidget {
  @override
  _ShortLinkSection createState() => _ShortLinkSection();
}

class _ShortLinkSection extends State<ShortLinkSection> {
  Color? ButtonColor = PrimaryCyanColor;

  TextEditingController LinkController = new TextEditingController();
  bool? CheckEmpty = false;

  Shortly_cubit _shortly_cubit = new Shortly_cubit();
  List<Map<String, dynamic>> CardShortly = [];

  bool? isLoading = false;
  bool? enable = true;

  String? encodeList = "";

  @override
  void initState() {
    super.initState();
    _getSavedCard();
  }

  _getSavedCard() async {
    await AppPref().getShortList().then((value) => encodeList = value!);
    Future.delayed(Duration(milliseconds: 400), () {
      CardShortly = List<Map<String, dynamic>>.from(jsonDecode(encodeList!));
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _shortly_cubit,
      child: BlocConsumer<Shortly_cubit, Shortly_State>(
        listener: (context, stateEvent) {
          if (stateEvent is ShortlyError) {
            isLoading = false;
            enable = true;
            AppSnackBar().showSnackBar(stateEvent.message, () {}, context);
          }
        },
        builder: (context, state) {
          if (state is ShortlyInitial) {
            return _buildUi(context);
          } else if (state is ShortlyLoading) {
            isLoading = true;
            enable = false;
            return _buildUi(context);
          } else if (state is ShortlyCompleted) {
            if (state.response != null && enable == false) {
              if (state.response!.ok == true) {
                CardShortly.add({
                  "Id": CardShortly.length + 1,
                  "LongLink": state.response!.result!.original_link ?? "",
                  "index": CardShortly.length + 1,
                  "ShortLink": state.response!.result!.full_short_link,
                  "Selected": false
                });
              }
            }
            isLoading = false;
            enable = true;
            return _buildUi(context);
          } else {
            return _buildUi(context);
          }
        },
      ),
    );
  }

  _buildUi(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.center,
      child: Stack(
        children: [
          Container(
            height: Responsive.isDesktop(context)
                ? size.height * 0.4
                : size.height * 0.6,
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
                                    color:
                                        CardShortly[index]['Selected'] == false
                                            ? PrimaryCyanColor
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
                              ),
                            ),
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
                                    BorderColor: CheckEmpty == true? Colors.red:Colors.white,
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
                          enabled: enable,
                          isLoading: isLoading,
                          buttonName: "Shorten it!",
                          height: 48,
                          cornerRadius: 10,
                          width: Responsive.isDesktop(context)
                              ? 140
                              : size.width * 0.66,
                          press: () async {
                            if (LinkController.text.toString().length > 0) {
                              CheckEmpty = false;

                              await _shortly_cubit.GetShortLink(
                                  LinkController.text);

                              Future.delayed(Duration(seconds: 1), () async {
                                String List_Encoded = json.encode(CardShortly);
                                await AppPref()
                                    .saveShortList(Data: List_Encoded);
                              });
                            } else {
                              CheckEmpty = true;
                            }
                          },
                          nHover: (value) {
                            setState(() {
                              value == true
                                  ? ButtonColor = Hover_Button_Color
                                  : ButtonColor = PrimaryCyanColor;
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
