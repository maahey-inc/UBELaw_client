
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

DropdownButtonHideUnderline buildDropdownButtonHideUnderline(double w,String hint,List<String> items,String? selectedValue,Function onChanged) {
  return DropdownButtonHideUnderline(

    child: DropdownButton2(

      isExpanded: true,
      hint: Text(
            hint,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.normal,
              color: Colors.black87,
            ),
            overflow: TextOverflow.ellipsis,
          ),

      items: items
          .map((item) => DropdownMenuItem<String>(
        value: item,
        child: Text(
          item,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.normal,
            color: Colors.black87,
          ),
          overflow: TextOverflow.ellipsis,
        ),
      ))
          .toList(),
      value: selectedValue,
      onChanged: (val){onChanged(val);},
      icon: const Icon(
        Icons.keyboard_arrow_down_outlined,
      ),
      iconSize: 14,
      iconEnabledColor: Colors.black87,
      iconDisabledColor: Colors.grey,
      buttonHeight: 40,
      buttonWidth: w,
      buttonPadding: const EdgeInsets.only(left: 14, right: 14),
      buttonDecoration: BoxDecoration(
        borderRadius: BorderRadius.circular(2),
        border: Border.all(
          color: Colors.black26,
        ),
        color: Colors.white.withOpacity(0.9),
      ),
      buttonElevation: 1,
      itemHeight: 40,
      itemPadding: const EdgeInsets.only(left: 14, right: 14),
      dropdownMaxHeight: 200,
      dropdownWidth: w,
      dropdownPadding: EdgeInsets.symmetric(vertical: 5),
      dropdownDecoration: BoxDecoration(

        borderRadius: BorderRadius.circular(5),
        color: Colors.white,
      ),
      dropdownElevation: 8,
      scrollbarRadius: const Radius.circular(5),
      scrollbarThickness: 6,
      scrollbarAlwaysShow: true,
      offset: const Offset(-20, 0),
    ),
  );
}