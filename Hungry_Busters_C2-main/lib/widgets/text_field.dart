import 'package:flutter/material.dart';
import 'package:hungry_busters/utils/colors.dart';
import 'package:hungry_busters/utils/fonts.dart';

class TextFeildInput extends StatelessWidget {
  final TextEditingController textEditingController;
  final String hintText;
  final bool? ispassword;
  final TextInputType textInputType;
  final TextStyle? textStyle;
  const TextFeildInput(
      {super.key,
      required this.textEditingController,
      required this.hintText,
      this.ispassword,
      required this.textInputType,
      this.textStyle});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textEditingController,
      obscureText: ispassword ?? false,
      keyboardType: textInputType,
      decoration: InputDecoration(
        enabled: true,
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: CustomColors.primaryColor,
          ),
        ),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: CustomColors.primaryColor,
          ),
        ),
        contentPadding: const EdgeInsets.all(8),
        hintText: hintText,
        hintStyle: textStyle ?? Fonts.fontMedium.copyWith(fontSize: 16),
      ),
    );
  }
}
