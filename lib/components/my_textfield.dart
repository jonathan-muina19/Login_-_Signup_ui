import 'package:flutter/material.dart';

class MyTextfield extends StatelessWidget {
  final controller;
  final  String hinttext;
  final bool obscuretext;
  final prefixIcon;
  final Widget? suffixIcon;

  const MyTextfield({super.key,
    required this.controller,
    required this.hinttext,
    required this.obscuretext,
    required this.prefixIcon,
    required this.suffixIcon
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: TextField(
        controller: controller,
        obscureText: obscuretext,
        decoration: InputDecoration(
          suffixIcon:suffixIcon ,
          prefixIcon: prefixIcon,
          hintText: hinttext,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: Colors.white)
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: Colors.grey.shade400)
          ),
          fillColor: Colors.deepPurple[100],
          filled: true,
          hintStyle: TextStyle(
              color: Colors.black54,
              fontSize: 15,
            fontWeight: FontWeight.bold

          )

        ),
      ),
    );
  }
}
