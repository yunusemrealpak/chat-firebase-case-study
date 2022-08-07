import 'package:flutter/material.dart';

class CustomTextStyle extends TextStyle {
  const CustomTextStyle();

  const CustomTextStyle.justWhite() : super(color: Colors.white);
  const CustomTextStyle.justWhiteAndSmall() : super(color: Colors.white, fontSize: 14);
  const CustomTextStyle.whiteAndBold() : super(color: Colors.white, fontWeight: FontWeight.bold);
}
