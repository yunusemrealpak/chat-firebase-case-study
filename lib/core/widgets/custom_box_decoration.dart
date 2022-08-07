import 'package:flutter/material.dart';

class CustomBoxDecoration extends BoxDecoration {
  const CustomBoxDecoration();

  CustomBoxDecoration.blurRadiusWhite()
      : super(
          borderRadius: BorderRadius.circular(32),
          color: Colors.white12,
        );
}
