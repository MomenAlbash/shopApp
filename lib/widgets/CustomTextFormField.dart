
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({
    required this.textInputType,
    this.onchange,
     this.hintText,
    this.minLines,
    required this.controller,
    required this.labelText,
    this.suffix,
    this.prefix,
    this.validate
  }) ;
  final String? hintText;
  final String labelText;
  final TextInputType textInputType;
  Function(String)? onchange;
  final int? minLines;
  final TextEditingController controller;
  final String? Function(String?)? validate;
  final IconData? suffix;
  final IconData? prefix;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      minLines: 1,
      maxLines: 5,

      validator: validate ,
      keyboardType: textInputType,
      onChanged: onchange,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        prefixIcon: Icon(prefix),
        hintStyle: const TextStyle(color: Colors.grey),
        enabled: true,
        suffix:IconButton(
          onPressed: (){},
          icon: Icon(suffix),
        ) ,
        focusedBorder :const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey,
          ),
        ),
        enabledBorder:const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
