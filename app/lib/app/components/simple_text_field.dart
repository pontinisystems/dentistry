import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

TextField _textField({
    String labelText,
    bool obscure,
    Function() errorText,
    @required maxLenght,
    @required onChanged,
    @required inputType,
    @required inputFormatters,
    @required keyBoardType,
  }) {
    return TextField(
        keyboardType: keyBoardType,
        inputFormatters: inputFormatters,
        onChanged: onChanged,
        maxLength: maxLenght == null ? 0 : maxLenght,
        obscureText: obscure == null ? false : obscure,
        decoration: InputDecoration(
            counterText: '',
            labelText: labelText,
            errorText: errorText == null ? null : errorText()));
  }
