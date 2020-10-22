import 'package:first_flutter/ui/shared/globals.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class TextFieldWidget extends StatelessWidget {
  final String hintText;
  final IconData prefixIconData;
  final IconData suffexIconData;
  final bool obscureText;
  final Function onChanged;

  const TextFieldWidget(
      {this.hintText,
      this.prefixIconData,
      this.suffexIconData,
      this.obscureText,
      this.onChanged});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          hintText: hintText,
          prefixIcon: Icon(
            prefixIconData,
            size: 18,
            color: Global.mediumBlue,
          )),
    );
  }
}
