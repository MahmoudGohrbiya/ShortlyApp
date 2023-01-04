import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shortly/Screens/HomeScreen/Components/BodyContent/AdvanceStatisticSection.dart';
import 'package:shortly/Screens/HomeScreen/Components/BodyContent/GetStartSection.dart';
import 'package:shortly/Screens/HomeScreen/Components/BodyContent/ShortLinkSection.dart';
import '../../Constants/constants.dart';
import '../../controllers/MenuController.dart';
import 'Components/header.dart';
import 'Components/side_menu.dart';

class HomeScreen extends StatelessWidget {
  final MenuController _controller = Get.put(MenuController());

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      key: _controller.scaffoldkey,
      backgroundColor: Colors.white,
      drawer: SideMenu(),
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(minHeight: size.height),
          child: Column(
            children: [
              Header(),
              Container(
                padding: EdgeInsets.all(kDefaultPadding),
                constraints: BoxConstraints(maxWidth: kMaxWidth),
                child: Container(child: GetStartSection()),

              ),
              Container(
                alignment: Alignment.center,
                child: Container(
                  child: ShortLinkSection(),
                ),
              ),
              Container(
                alignment: Alignment.center,
                child: Container(
                  child: AdvanceStatisticSection(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
