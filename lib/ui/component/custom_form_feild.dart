import 'package:flutter/material.dart';

typedef myvalidator = String? Function(String?);

class CustomFormfeild extends StatelessWidget {
  String label;
  bool isPassword;
  TextInputType keyboardType;
  myvalidator validator;
  TextEditingController controler;
  CustomFormfeild({
    required this.label,
    required this. validator,
    required this.controler,
    this.isPassword=false,
    this.keyboardType=TextInputType.text,

  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
        controller:controler ,

        keyboardType: keyboardType,
        obscureText: isPassword,
        decoration: InputDecoration(
          labelText: label,
        ));
  }
  }

