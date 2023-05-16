import 'package:flutter/material.dart';

Widget text_field({
  required String hintText,
  required IconData icon,
  required TextInputType textInputType,
  required int maxLines,
  required TextEditingController controller,
  required bool isObsecure, ///for password purposes
}){
  return Padding(
    padding: EdgeInsets.only(bottom: 10),
    child: TextField(
      cursorColor: Colors.green,
      controller: controller,
      keyboardType: textInputType,
      maxLines: maxLines,
      decoration: InputDecoration(
          labelText: hintText,
          hintText: hintText,
          hintStyle: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 15,
              color: Colors.grey.shade600
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Colors.black)
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Colors.green)
          ),
          prefixIcon: Container(
            padding: EdgeInsets.all(8),
            child: Icon(icon, color: Colors.black,),
            // decoration: BoxDecoration(
            //   borderRadius: BorderRadius.circular(8),
            //   color: Colors.green
            // ),
          ),

          // suffixIcon: isObsecure ?  Icon(Icons.edit, color: Colors.black,) : Container(),

          suffixIcon: Icon(Icons.edit, color: Colors.black,),


          alignLabelWithHint: true,
          fillColor: Colors.grey[300],
          filled: true
      ),
    ),
  );
}