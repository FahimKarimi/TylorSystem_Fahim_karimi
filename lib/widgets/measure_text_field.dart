import 'package:flutter/material.dart';

class MeasureTextField extends StatelessWidget 
{
  final TextEditingController controller;
  final TextInputType keyboardType;
  final String text;

  const MeasureTextField(
  {
    super.key, 
    required this.controller, 
    required this.text,
    required this.keyboardType
  });

  @override
  Widget build(BuildContext context) 
  {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      //style: const TextStyle(color: Colors.white),
      //cursorColor: Colors.white,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        labelText: text, 
        // focusedBorder: OutlineInputBorder(borderSide: BorderSide(width: 2, color: Colors.white)),
        // enabledBorder: OutlineInputBorder(borderSide: BorderSide(width: 2, color: Colors.white)),
        // labelStyle: TextStyle(color: Colors.white)
      ),
    );
  }
}