


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utilities/size_config.dart';
SizedBox defaultButton(bool isInfinity,String text,Function() func) {
  return SizedBox(
    height: 60,
    width: isInfinity ? double.infinity : getProportionateScreenWidth(150),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35),
      child: ElevatedButton(
        style: ButtonStyle(
          shape: SelectedBorder(),
          backgroundColor: MaterialStateProperty.all(Colors.black54),
        ),
        onPressed: func,
        child: Text(
          text,
        style: TextStyle(fontSize: 20),
        /*  style: TextStyle(fontWeight: FontWeight.bold,
            fontSize: getProportionateScreenWidth(25),
            color: Colors.red,
          ),*/
        ),
      ),
    ),
  );
}


class SelectedBorder extends RoundedRectangleBorder
    implements MaterialStateOutlinedBorder {
  @override
  OutlinedBorder resolve(Set<MaterialState> states) {
    return RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    );
  }
}
