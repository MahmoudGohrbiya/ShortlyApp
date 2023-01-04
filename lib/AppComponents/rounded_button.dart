import 'package:flutter/material.dart';
import 'package:shortly/Constants/constants.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton(
      {Key? key,
      required this.buttonName,
      this.isLoading,
      this.enabled,
      this.press,
      this.color,
      this.textColor,
      this.width,
      this.cornerRadius,
      this.height,
      this.BtnIcon,
      this.nHover
      })
      : super(key: key);

  final String buttonName;

  final VoidCallback? press;
  final Color? color, textColor;
  final double? width;
  final double? cornerRadius;
  final double? height;
  final bool? isLoading;
  final bool? enabled;
  final IconData? BtnIcon;
   final  Function(bool)? nHover;


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return enabled!
        ? Container(
            width: width != null ? width : 0.8 * size.width,
            height: height != null ? height : 0.08 * size.width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(cornerRadius ?? 28),
                color: this.color != null ? color : PrimaryCyanColor,

                   ),
            child: OutlinedButton(
              onPressed: press,
              style: OutlinedButton.styleFrom(
                side: BorderSide(
                  color: Colors.transparent,
                ),
              ),
              onHover: (value){
                print("kkkk");
              },
              child: BtnIcon != null
                  ? Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          // padding: EdgeInsets.fromLTRB(4, 0, 10, 0),
                          child: Icon(
                            BtnIcon!,
                            color: this.textColor ?? Colors.white,
                            size: 25,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(10, 4, 4, 4),
                          child: Text(
                            buttonName,
                            style: TextStyle(color:this.textColor?? Colors.white,fontFamily: AppFontFamily),
                          ),
                        ),
                      ],
                    )
                  : Text(
                      buttonName,
                      style: TextStyle(color: this.textColor ?? Colors.white,fontFamily: AppFontFamily),
                    ),
            ),
          )
        : Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            width: width != null ? width : 0.8 * size.width,
            height: height != null ? height : 0.15 * size.width,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [PrimaryCyanColor, PrimaryCyanColor]),
              borderRadius: BorderRadius.circular(
                  cornerRadius != null ? cornerRadius! : 28),
            ),
            child: Center(
                child: Stack(
              children: [
                Center(
                  child: Text(
                    buttonName,
                    style: TextStyle(
                        fontFamily: AppFontFamily,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: Colors.white),
                  ),
                ),
                Visibility(
                  visible: isLoading!,
                  child: Container(
                    alignment: Alignment.centerRight,
                    margin: EdgeInsets.only(right: 20),
                    child: CircularProgressIndicator(
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            )),
          );
  }
}
