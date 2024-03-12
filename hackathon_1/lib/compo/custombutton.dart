import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final void Function()? onPressed;
  final String text;
  const CustomButton({super.key, required this.text, this.onPressed});

  @override 
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed:onPressed,
      child: Text(
        text,
        style: TextStyle(color: Colors.white,fontSize: 18),
      ),
      color: Colors.orange,
      height: 48,
      minWidth: 170,
      
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
    );
  }
}
