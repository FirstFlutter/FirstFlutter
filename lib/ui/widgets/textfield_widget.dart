import 'package:first_flutter/core/viewmodels/home_model.dart';
import 'package:first_flutter/ui/shared/globals.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

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
    final model = Provider.of<HomeModel>(context);
    return TextField(
      onChanged: onChanged,
      obscureText: obscureText,
      style: TextStyle(
        color: Global.mediumBlue,
        fontSize: 14.0,
      ),
      cursorColor: Global.mediumBlue,
      decoration: InputDecoration(
        labelText: hintText,
        prefixIcon: Icon(
          prefixIconData,
          size: 18,
          color: Global.mediumBlue,
        ),
        filled: true,
        enabledBorder: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Global.mediumBlue),
        ),
        suffixIcon: GestureDetector(
          onTap: () {
            model.isVisible = !model.isVisible;
          },
          child: Icon(
            suffexIconData,
            size: 18,
            color: Global.mediumBlue,
          ),
        ),
        labelStyle: TextStyle(color: Global.mediumBlue),
        focusColor: Global.mediumBlue,
      ),
    );
  }
}
