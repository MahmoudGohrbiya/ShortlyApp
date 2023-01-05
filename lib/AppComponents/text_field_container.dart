import 'package:flutter/material.dart';

class TextFieldContainer extends StatelessWidget {
  final Widget? child;
  final double? width;
  final double? height;
  final double? cornerRadius;
  final bool? IsBorderColor;
  final Color? BorderColor;

  const TextFieldContainer(
      {@required key,
      @required this.child,
      this.width,
      this.height,
      this.IsBorderColor,
      this.cornerRadius,
      this.BorderColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.only(left: 10, right: 10),
      width: width ?? size.width * 0.9,
      height: 48,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(cornerRadius ?? 10),
        border: Border.all(
          color: BorderColor ?? Colors.white,
          width: 3,
        ),
      ),
      child: child,
    );
  }
}
