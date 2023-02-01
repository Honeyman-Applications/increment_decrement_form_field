/*
  Bradley Honeyman
  Jan 29, 2023

  These configs are used to pass data to the icon buttons
  in the IncrementDecrementFormField

 */

import 'package:flutter/material.dart';

///  These configs are used to pass data to the icon buttons
///  in the IncrementDecrementFormField
class IconButtonConfig {
  final Key? key;
  final Icon icon;
  final ButtonStyle? style;
  final EdgeInsetsGeometry padding;
  final bool autofocus;
  final AlignmentGeometry alignment;
  final Color? color;
  final BoxConstraints? constraints;
  final Color? disabledColor;
  final bool enableFeedback;
  final Color? focusColor;
  final FocusNode? focusNode;
  final Color? highlightColor;
  final Color? hoverColor;
  final double? iconSize;
  final bool? isSelected;
  final MouseCursor? mouseCursor;
  final Widget? selectedIcon;
  final Color? splashColor;
  final double? splashRadius;
  final String? tooltip;
  final VisualDensity? visualDensity;

  const IconButtonConfig({
    this.key,
    required this.icon,
    this.style,
    this.padding = const EdgeInsets.all(8.0),
    this.autofocus = false,
    this.alignment = Alignment.center,
    this.color,
    this.constraints,
    this.disabledColor,
    this.enableFeedback = true,
    this.focusColor,
    this.focusNode,
    this.highlightColor,
    this.hoverColor,
    this.iconSize,
    this.isSelected,
    this.mouseCursor,
    this.selectedIcon,
    this.splashColor,
    this.splashRadius,
    this.tooltip,
    this.visualDensity,
  });
}
