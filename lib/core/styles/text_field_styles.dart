import 'package:flutter/material.dart';

class TextFormFieldDecoration {
  final String? labelText;

  TextFormFieldDecoration({this.labelText});
}

class TextFieldStyles {
  static InputDecoration decoration(
      TextFormFieldDecoration textFormFieldDecoration) {
    return InputDecoration(
      labelText: textFormFieldDecoration.labelText,
      border: const OutlineInputBorder(),
    );
  }

  static InputDecoration decoration2(InputDecoration inputDecoration) {
    inputDecoration =
        inputDecoration.copyWith(border: const OutlineInputBorder());

    return inputDecoration;
  }
}
