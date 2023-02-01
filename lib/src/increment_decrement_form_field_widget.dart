/*
  Bradley Honeyman
  Jan 29, 2023

  This is the widget for displaying IncrementDecrementFormField

 */

import 'package:flutter/material.dart';
import 'package:increment_decrement_form_field/increment_decrement_form_field.dart';

class IncrementDecrementFormField<T> extends StatefulWidget {
  /*
    Custom configs
  */

  /// display the value in the centre widget
  final Widget Function(T? value, FormFieldState<T>) displayBuilder;

  /// run your custom code to increment the displayed value.
  /// return the new desired value.
  final T? Function(T? currentValue) onIncrement;

  /// run your custom code to decrement the displayed value.
  /// return the new desired value.
  final T? Function(T? currentValue) onDecrement;

  /// the box decoration surrounding the widget when the validation function
  /// returns a value other than null. The decoration for the Container
  final BoxDecoration errorDecoration;

  /*
    Form field configs
  */
  final T? initialValue;
  final String? Function(T? value)? validator;
  final void Function(T? value)? onSaved;
  final AutovalidateMode? autovalidateMode;
  final bool enabled;
  final String? restorationId;
  final Key? formFieldKey;

  /*
    Icon button configs
  */
  final IconButtonConfig incrementIconButtonConfig;
  final IconButtonConfig decrementIconButtonConfig;

  /*
    Column configs
  */
  final ColumnConfig columnConfig;

  /*
    Row Configs
  */
  final RowConfig rowConfig;

  /*
    Container Configs
  */
  final ContainerConfig containerConfig;

  /*
    Error text config
  */
  final ErrorTextConfig errorTextConfig;

  /*
    Error text flexible
  */
  final ErrorFlexibleConfig errorFlexibleConfig;

  const IncrementDecrementFormField({
    super.key,
    required this.displayBuilder,
    this.initialValue,
    this.incrementIconButtonConfig = const IconButtonConfig(
      icon: Icon(
        Icons.add,
      ),
    ),
    this.decrementIconButtonConfig = const IconButtonConfig(
      icon: Icon(
        Icons.remove,
      ),
    ),
    required this.onIncrement,
    required this.onDecrement,
    this.errorDecoration = const BoxDecoration(
      border: Border(
        left: BorderSide(
          color: Colors.red,
        ),
        top: BorderSide(
          color: Colors.red,
        ),
        right: BorderSide(
          color: Colors.red,
        ),
        bottom: BorderSide(
          color: Colors.red,
        ),
      ),
    ),
    this.validator,
    this.onSaved,
    this.enabled = true,
    this.autovalidateMode,
    this.restorationId,
    this.formFieldKey,
    this.columnConfig = const ColumnConfig(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
    ),
    this.containerConfig = const ContainerConfig(),
    this.rowConfig = const RowConfig(),
    this.errorTextConfig = const ErrorTextConfig(
      style: TextStyle(
        color: Colors.red,
      ),
    ),
    this.errorFlexibleConfig = const ErrorFlexibleConfig(),
  });

  @override
  State<StatefulWidget> createState() => IncrementDecrementFormFieldState<T>();
}

class IncrementDecrementFormFieldState<T>
    extends State<IncrementDecrementFormField<T>> {
  @override
  Widget build(BuildContext context) {
    return FormField<T>(
      key: widget.formFieldKey,
      validator: widget.validator,
      onSaved: widget.onSaved,
      autovalidateMode: widget.autovalidateMode,
      enabled: widget.enabled,
      restorationId: widget.restorationId,
      initialValue: widget.initialValue,
      builder: (field) {
        return Column(
          key: widget.columnConfig.key,
          mainAxisSize: widget.columnConfig.mainAxisSize,
          crossAxisAlignment: widget.columnConfig.crossAxisAlignment,
          mainAxisAlignment: widget.columnConfig.mainAxisAlignment,
          textBaseline: widget.columnConfig.textBaseline,
          textDirection: widget.columnConfig.textDirection,
          verticalDirection: widget.columnConfig.verticalDirection,
          children: [
            Container(
              key: widget.containerConfig.key,
              constraints: widget.containerConfig.constraints,
              color: widget.containerConfig.color,
              alignment: widget.containerConfig.alignment,
              padding: widget.containerConfig.padding,
              clipBehavior: widget.containerConfig.clipBehavior,
              foregroundDecoration: widget.containerConfig.foregroundDecoration,
              height: widget.containerConfig.height,
              width: widget.containerConfig.width,
              margin: widget.containerConfig.margin,
              transform: widget.containerConfig.transform,
              transformAlignment: widget.containerConfig.transformAlignment,
              decoration: field.hasError ? widget.errorDecoration : null,
              child: Row(
                key: widget.rowConfig.key,
                mainAxisSize: widget.rowConfig.mainAxisSize,
                mainAxisAlignment: widget.rowConfig.mainAxisAlignment,
                verticalDirection: widget.rowConfig.verticalDirection,
                textDirection: widget.rowConfig.textDirection,
                textBaseline: widget.rowConfig.textBaseline,
                crossAxisAlignment: widget.rowConfig.crossAxisAlignment,
                children: [
                  /*
                    Decrement button
                    use defined function to set the new value for field.value
                  */
                  IconButton(
                    onPressed: () {
                      field.didChange(
                        widget.onDecrement(
                          field.value,
                        ),
                      );
                    },

                    // configs
                    key: widget.decrementIconButtonConfig.key,
                    icon: widget.decrementIconButtonConfig.icon,
                    style: widget.decrementIconButtonConfig.style,
                    padding: widget.decrementIconButtonConfig.padding,
                    autofocus: widget.decrementIconButtonConfig.autofocus,
                    alignment: widget.decrementIconButtonConfig.alignment,
                    color: widget.decrementIconButtonConfig.color,
                    constraints: widget.decrementIconButtonConfig.constraints,
                    disabledColor:
                        widget.decrementIconButtonConfig.disabledColor,
                    enableFeedback:
                        widget.decrementIconButtonConfig.enableFeedback,
                    focusColor: widget.decrementIconButtonConfig.focusColor,
                    focusNode: widget.decrementIconButtonConfig.focusNode,
                    highlightColor:
                        widget.decrementIconButtonConfig.highlightColor,
                    hoverColor: widget.decrementIconButtonConfig.hoverColor,
                    iconSize: widget.decrementIconButtonConfig.iconSize,
                    isSelected: widget.decrementIconButtonConfig.isSelected,
                    mouseCursor: widget.decrementIconButtonConfig.mouseCursor,
                    selectedIcon: widget.decrementIconButtonConfig.selectedIcon,
                    splashColor: widget.decrementIconButtonConfig.splashColor,
                    splashRadius: widget.decrementIconButtonConfig.splashRadius,
                    tooltip: widget.decrementIconButtonConfig.tooltip,
                    visualDensity:
                        widget.decrementIconButtonConfig.visualDensity,
                  ),

                  /*
                    Display widget using defined function
                  */
                  widget.displayBuilder(
                    field.value,
                    field,
                  ),

                  /*
                    Increment button
                    use defined function to set the new value for field.value
                  */
                  IconButton(
                    onPressed: () {
                      field.didChange(
                        widget.onIncrement(
                          field.value,
                        ),
                      );
                    },

                    // configs
                    key: widget.incrementIconButtonConfig.key,
                    icon: widget.incrementIconButtonConfig.icon,
                    style: widget.incrementIconButtonConfig.style,
                    padding: widget.incrementIconButtonConfig.padding,
                    autofocus: widget.incrementIconButtonConfig.autofocus,
                    alignment: widget.incrementIconButtonConfig.alignment,
                    color: widget.incrementIconButtonConfig.color,
                    constraints: widget.incrementIconButtonConfig.constraints,
                    disabledColor:
                        widget.incrementIconButtonConfig.disabledColor,
                    enableFeedback:
                        widget.incrementIconButtonConfig.enableFeedback,
                    focusColor: widget.incrementIconButtonConfig.focusColor,
                    focusNode: widget.incrementIconButtonConfig.focusNode,
                    highlightColor:
                        widget.incrementIconButtonConfig.highlightColor,
                    hoverColor: widget.incrementIconButtonConfig.hoverColor,
                    iconSize: widget.incrementIconButtonConfig.iconSize,
                    isSelected: widget.incrementIconButtonConfig.isSelected,
                    mouseCursor: widget.incrementIconButtonConfig.mouseCursor,
                    selectedIcon: widget.incrementIconButtonConfig.selectedIcon,
                    splashColor: widget.incrementIconButtonConfig.splashColor,
                    splashRadius: widget.incrementIconButtonConfig.splashRadius,
                    tooltip: widget.incrementIconButtonConfig.tooltip,
                    visualDensity:
                        widget.incrementIconButtonConfig.visualDensity,
                  ),
                ],
              ),
            ),

            /*
              Error text
             */
            Flexible(
              key: widget.errorFlexibleConfig.key,
              fit: widget.errorFlexibleConfig.fit,
              flex: widget.errorFlexibleConfig.flex,
              child: Text(
                // display text, empty if no error
                field.errorText == null ? "" : field.errorText!,

                // configs
                key: widget.errorTextConfig.key,
                textDirection: widget.errorTextConfig.textDirection,
                style: widget.errorTextConfig.style,
                textAlign: widget.errorTextConfig.textAlign,
                locale: widget.errorTextConfig.locale,
                maxLines: widget.errorTextConfig.maxLines,
                overflow: widget.errorTextConfig.overflow,
                selectionColor: widget.errorTextConfig.selectionColor,
                semanticsLabel: widget.errorTextConfig.semanticsLabel,
                softWrap: widget.errorTextConfig.softWrap,
                strutStyle: widget.errorTextConfig.strutStyle,
                textHeightBehavior: widget.errorTextConfig.textHeightBehavior,
                textScaleFactor: widget.errorTextConfig.textScaleFactor,
                textWidthBasis: widget.errorTextConfig.textWidthBasis,
              ),
            ),
          ],
        );
      },
    );
  }
}
