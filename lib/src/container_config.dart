/*
  Bradley Honeyman
  Jan 30, 2023

  This file is used to pass data to the Container in IncrementDecrementFormField

 */

import 'package:flutter/material.dart';

/// This file is used to pass data to the Container in IncrementDecrementFormField
class ContainerConfig {
  final Key? key;
  final BoxConstraints? constraints;
  final Color? color;
  final AlignmentGeometry? alignment;
  final EdgeInsetsGeometry? padding;
  final Clip clipBehavior;
  final Decoration? foregroundDecoration;
  final double? height;
  final double? width;
  final EdgeInsetsGeometry? margin;
  final Matrix4? transform;
  final AlignmentGeometry? transformAlignment;

  const ContainerConfig({
    this.key,
    this.constraints,
    this.color,
    this.alignment,
    this.padding,
    this.clipBehavior = Clip.none,
    this.foregroundDecoration,
    this.height,
    this.width,
    this.margin,
    this.transform,
    this.transformAlignment,
  });
}
