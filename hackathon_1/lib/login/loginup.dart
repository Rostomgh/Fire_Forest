import 'package:flutter/material.dart';
import 'package:hackathon_1/compo/custombutton.dart';
import 'package:hackathon_1/compo/customtextfiled.dart';


class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}
TextEditingController name = TextEditingController();
TextEditingController email= TextEditingController();
TextEditingController password = TextEditingController();



class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
body:
Column(children: [
        const SizedBox(
          height: 240,
        ),
        const Text(
          'FireGuard',
          style: TextStyle(
            fontSize: 45,
            fontWeight: FontWeight.bold,
            color: Colors.orange,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          'Your efforts are invaluable',
          style: TextStyle(
              color: Colors.orange, fontSize: 15, fontWeight: FontWeight.w500),
          maxLines: 2,
        ),
        const SizedBox(
          height: 43,
        ),
        CustomText(hintText: 'Your name', mycontoller: name),
        const SizedBox(
          height: 16,
        ),
        CustomText(hintText: 'Email', mycontoller: email),
        const SizedBox(
          height: 18,
        ),
        CustomText(hintText: 'Password', mycontoller: password),
        

        const SizedBox(
          height: 18,
        ),
        CustomButton(
          text: "SIGN IN",
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/Second');
          },
        ),
      ]),
    );
  }
}
