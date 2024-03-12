import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final bool obscutext;
  final String hintText;
  final TextEditingController mycontoller;
  const CustomText({
    super.key,
    required this.hintText,
    required this.mycontoller,
    this.obscutext=false
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: Colors.orange,
      controller: mycontoller,
      obscureText: obscutext,
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(vertical: 2, horizontal: 20),
        filled: true,
        fillColor: Colors.white,
        hintText: hintText,
        hintStyle: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w300,
          color: Colors.black,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(35),
          borderSide: BorderSide(color: Colors.orange, width: 2),
        ),
      ),
    );
  }
}
