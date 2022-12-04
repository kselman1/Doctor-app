import 'package:flutter/material.dart';

const whiteColor=Colors.white;
const greenColor=Colors.green;
const textColor=Color(0x000000);




const TextFieldDecoration = InputDecoration(
  
  hintText: 'Enter a value',
  hintStyle: TextStyle(color: Colors.black),
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  enabledBorder: UnderlineInputBorder(      
      borderSide: BorderSide(color: greenColor),   
        ),  
    focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: greenColor),
        ),  
  
);
