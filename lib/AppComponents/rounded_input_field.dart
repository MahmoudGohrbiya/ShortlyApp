import 'dart:io';
import 'package:flutter/material.dart';
import 'package:shortly/AppComponents/text_field_container.dart';
import 'package:shortly/Constants/constants.dart';

class RoundedInputField extends StatefulWidget {
  final String? hintText;
  final IconData? icon;
  final ValueChanged<String>? onChanged;
  final double? width;
  final double? height;
  final Color? hintColor;
  final Color? iconColor;
  final int? maxLine;
  final TextInputType? keyboardtype;
  final int? minLine;
  final double? cornerRadius;
  final VoidCallback? OntapInput;
  final bool? IsreadOnly;
  final bool? IsBorderColor;
  final TextEditingController? textEditingController;
  final void Function(String)? on_submitted;
  final int? maxLength;
  final void Function()? onTapIcon;
  final void Function()? onTapSuffIcon;
  final IconData? Sufficon;
  final Color? SufficonColor;
  final double? FontSize;

  const RoundedInputField(
      {key,
      this.hintText,
      this.onChanged,
      this.icon,
      this.width,
      this.height,
      this.hintColor,
      this.iconColor,
      this.maxLine,
      this.keyboardtype,
      this.minLine,
      this.cornerRadius,
      this.IsreadOnly,
      this.IsBorderColor,
      this.textEditingController,
      this.on_submitted,
      this.onTapIcon,
      this.maxLength,
      this.Sufficon,
      this.onTapSuffIcon,
      this.SufficonColor,
      this.FontSize,
      this.OntapInput})
      : super(key: key);

  @override
  _RoundedInputFieldState createState() => _RoundedInputFieldState();
}

class _RoundedInputFieldState extends State<RoundedInputField> {
  final _text = TextEditingController();

  @override
  void dispose() {
    _text.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return TextFieldContainer(
        width: widget.width!,
        height: widget.height ?? size.height * 0.055,
        IsBorderColor: widget.IsBorderColor,
        cornerRadius: widget.cornerRadius,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(widget.cornerRadius ?? 10),
            border: Border.all(
              color: widget.IsBorderColor != null
                  ? (widget.IsBorderColor == true
                      ? Colors.black.withOpacity(0.1)
                      : Colors.white)
                  : Colors.white,
              width: 1,
            ),
          ),
          child: TextField(
            onSubmitted: widget.on_submitted,
            maxLength: widget.maxLength,
            style: TextStyle(
              fontSize: widget.FontSize ?? 12,
              color: Colors.black,
            ),
            controller: widget.textEditingController ?? null,
            readOnly: widget.IsreadOnly ?? false,
            maxLines: widget.maxLine != null ? widget.maxLine! : 6,
            minLines: widget.maxLine != null ? widget.maxLine! : 1,
            onChanged: widget.onChanged,
            keyboardType: widget.keyboardtype != null
                ? widget.keyboardtype
                : TextInputType.text,
            onTap: widget.OntapInput,
            cursorColor: PrimaryCyanColor,
            decoration: InputDecoration(
              hintStyle: TextStyle(
                  color: widget.hintColor ?? Colors.black, fontSize: 13),
              prefixIcon: widget.icon != null
                  ? IconButton(
                      padding: EdgeInsets.only(
                          left: 3, right: 3, top: Platform.isIOS ? 0 : 5),
                      onPressed: widget.onTapIcon,
                      icon: Row(
                        children: [
                          SizedBox(
                            width: 13,
                          ),
                          Icon(
                            widget.icon!,
                            color: widget.iconColor ?? PrimaryCyanColor,
                            size: 16,
                          )
                        ],
                      ),
                    )
                  : null,
              suffixIcon: widget.Sufficon != null
                  ? IconButton(
                      padding: EdgeInsets.all(3),
                      onPressed: widget.onTapSuffIcon,
                      icon: Row(
                        children: [
                          SizedBox(
                            width: 13,
                          ),
                          Icon(
                            widget.Sufficon!,
                            color: widget.SufficonColor ?? PrimaryCyanColor,
                            size: 16,
                          )
                        ],
                      ),
                    )
                  : null,
              hintText: widget.hintText,
              border: InputBorder.none,
            ),
          ),
        ));
  }
}
