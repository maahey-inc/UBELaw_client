import 'package:flutter/material.dart';
import '../utilities/constants.dart';
import 'custom_surffix_icon.dart';

TextFormField buildTextFormField(
    {required TextEditingController controller,required String label,required String hint,required String svg,required TextInputType textInputType, bool obscureText=false,int maxLine=1}) {
  OutlineInputBorder outlineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(color: kTextColor),
      gapPadding: 10,
    );
  }
  return TextFormField(

    maxLines: maxLine,

    obscureText: obscureText,
    controller: controller,
    //onSaved: (newVal)=>emailVar=newVal,
    keyboardType: textInputType,
    onChanged: (val) {
      // fnameText = val;
    },


    decoration:
    InputDecoration(

      contentPadding: EdgeInsets.symmetric(
        horizontal: 42,
        vertical: 20,
      ),
      enabledBorder: outlineInputBorder(),
      focusedBorder: outlineInputBorder(),
      border: outlineInputBorder(),
      labelText: label,
      hintText: hint,
      floatingLabelBehavior: FloatingLabelBehavior.auto,
      suffixIcon: CustomSurffixIcon(
        svgIcon: svg,
      ),
    ),
  );
}



