/*
  Bradley Honeyman
  Jan 30, 2023

  This file is used to pass data to the error Text in IncrementDecrementFormField

 */

import 'package:flutter/material.dart';

/// This file is used to pass data to the error Text in IncrementDecrementFormField
class ErrorTextConfig {
  final Key? key;
  final TextDirection? textDirection;
  final TextStyle? style;
  final TextAlign? textAlign;
  final Locale? locale;
  final int? maxLines;
  final TextOverflow? overflow;
  final Color? selectionColor;
  final String? semanticsLabel;
  final bool? softWrap;
  final StrutStyle? strutStyle;
  final TextHeightBehavior? textHeightBehavior;
  final double? textScaleFactor;
  final TextWidthBasis? textWidthBasis;

  const ErrorTextConfig({
    this.key,
    this.textDirection,
    this.style,
    this.textAlign,
    this.locale,
    this.maxLines,
    this.overflow,
    this.selectionColor,
    this.semanticsLabel,
    this.softWrap,
    this.strutStyle,
    this.textHeightBehavior,
    this.textScaleFactor,
    this.textWidthBasis,
  });
}
