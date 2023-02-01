/*
  Bradley Honeyman
  Jan 30, 2023

  This file is used to pass data to the column in IncrementDecrementFormField

 */

import 'package:flutter/material.dart';

/// This file is used to pass data to the Column in IncrementDecrementFormField
class ColumnConfig {
  final Key? key;
  final MainAxisSize mainAxisSize;
  final CrossAxisAlignment crossAxisAlignment;
  final MainAxisAlignment mainAxisAlignment;
  final TextBaseline? textBaseline;
  final TextDirection? textDirection;
  final VerticalDirection verticalDirection;

  const ColumnConfig({
    this.key,
    this.mainAxisSize = MainAxisSize.max,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.textBaseline,
    this.textDirection,
    this.verticalDirection = VerticalDirection.down,
  });
}
