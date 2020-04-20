import 'package:dentistry/app/utils/colors_util.dart';
import 'package:flutter/material.dart';

class ControleJaTextFormField extends TextFormField {
  ControleJaTextFormField({
    ValueChanged<String> onChanged,
    FormFieldValidator<String> validator,
    @required String label,
    bool obscureText,
    double borderRadius,
    double fontSize,
    EdgeInsets padding,
    TextEditingController controller,
    IconData icon,
  }) : super(
    
          controller: controller,
          onChanged: onChanged,
          validator: validator,
          
          obscureText: obscureText ?? false,
          
          decoration: InputDecoration(
            prefixIcon: icon != null ? Icon(icon) : null,
            labelText: label,
            labelStyle: TextStyle( 
              fontSize: fontSize ?? 14,
              color: Color(colorFive)
            ),
            
            
            border: OutlineInputBorder(
              borderSide: BorderSide(color:Colors.black),
            ),
          ),
        );
}
