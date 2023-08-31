import 'dart:math';

import 'package:alda3ia/constents/my_sizes.dart';
import 'package:alda3ia/constents/my_texts.dart';
import 'package:alda3ia/controller/theme_ctr.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ZoomText extends GetView<ThemeCtr> {
  ZoomText({required this.text, this.fontWeight, this.textAlign});
  final String text;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    context.theme;
    return Padding(
      padding: EdgeInsets.only(top: MySizes.screenPaddingH),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: MySizes.screenPaddingV),
        child: SelectableText(
          text,
          textAlign: textAlign,
          style: MyTexts.normal(
                  title: "",
                  size: min(MediaQuery.of(context).size.width * .05, 24))
              .style,
        ),
      ),
    );
  }
}
