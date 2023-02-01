/*
  Bradley Honeyman
  Jan 30, 2023

  This file is used to pass data to the flexible around the error Text in IncrementDecrementFormField

 */

import 'package:flutter/material.dart';

/// This file is used to pass data to the flexible around the error Text in IncrementDecrementFormField
class ErrorFlexibleConfig {
  final Key? key;
  final FlexFit fit;
  final int flex;

  const ErrorFlexibleConfig({
    this.fit = FlexFit.loose,
    this.flex = 1,
    this.key,
  });
}
