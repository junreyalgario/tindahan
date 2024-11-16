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
}
