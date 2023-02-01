/*
  Bradley Honeyman
  Jan 30, 2023

  This file is used to pass data to the Row in IncrementDecrementFormField

 */

import 'package:flutter/material.dart';

/// This file is used to pass data to the Row in IncrementDecrementFormField
class RowConfig {
  final Key? key;
  final MainAxisSize mainAxisSize;
  final MainAxisAlignment mainAxisAlignment;
  final VerticalDirection verticalDirection;
  final TextDirection? textDirection;
  final TextBaseline? textBaseline;
  final CrossAxisAlignment crossAxisAlignment;

  const RowConfig({
    this.key,
    this.mainAxisSize = MainAxisSize.max,
    this.mainAxisAlignment = MainAxisAlignment.spaceBetween,
    this.verticalDirection = VerticalDirection.down,
    this.textDirection,
    this.textBaseline,
    this.crossAxisAlignment = CrossAxisAlignment.center,
  });
}
