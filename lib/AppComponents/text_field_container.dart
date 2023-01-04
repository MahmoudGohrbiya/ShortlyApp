import 'package:flutter/material.dart';

class TextFieldContainer extends StatelessWidget {
  final Widget? child;
  final double? width;
  final double? height;
  final double? cornerRadius;
  final bool? IsBorderColor;

  const TextFieldContainer(
      {@required key,
      @required this.child,
      this.width,
      this.height,
      this.IsBorderColor,
      this.cornerRadius})
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
          color: IsBorderColor != null
              ? (IsBorderColor == true
                  ? Colors.black.withOpacity(0.1)
                  : Colors.white)
              : Colors.white,
          width: 1,
        ),
      ),
      child: child,
    );
  }
}
