import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shortly/Constants/constants.dart';
import '../../../AppComponents/rounded_button.dart';
import '../../../controllers/MenuController.dart';

class SideMenu extends StatelessWidget {
  final MenuController _controller = Get.put(MenuController());

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Drawer(
      child: Container(
        color: PrimaryDarkVioletColor,
        child: Obx(
          () => ListView(
            children: [
              DrawerHeader(
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: kDefaultPadding * 3.5),
                ),
              ),
              ...List.generate(
                _controller.menuItems.length,
                (index) => DrawerItem(
                  isActive: index == _controller.selectedIndex,
                  title: _controller.menuItems[index],
                  press: () {
                    _controller.setMenuIndex(index);
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                child: Divider(
                  color: Colors.white,
                  thickness: 0.3,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: DrawerItem(
                  isActive: false,
                  title: "Login",
                  press: () {},
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 40),
                child: RoundedButton(
                  color: PrimaryCyanColor,
                  enabled: true,
                  isLoading: false,
                  buttonName: "sign Up",
                  SizeFont: 18,
                  height: 50,
                  width: 100,
                  press: () {},
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class DrawerItem extends StatelessWidget {
  final String title;
  final bool isActive;
  final VoidCallback press;

  const DrawerItem({
    Key? key,
    required this.title,
    required this.isActive,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
        selected: isActive,
        selectedTileColor: PrimaryCyanColor,
        onTap: press,
        title: Text(
          title,
          style: TextStyle(
              color: Colors.white,
              fontFamily: AppFontFamily,
              fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
