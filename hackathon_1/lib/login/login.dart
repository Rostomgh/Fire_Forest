import 'package:flutter/material.dart';

import 'package:hackathon_1/compo/custombutton.dart';
import 'package:hackathon_1/compo/customtextfiled.dart';

class Second extends StatefulWidget {
  const Second({super.key});

  @override
  State<Second> createState() => _SecondState();
}

TextEditingController user = TextEditingController();
TextEditingController password = TextEditingController();
 

class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [Column(children: [
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
            'Protect your forest to protect your life',
            style: TextStyle(
                color: Colors.orange, fontSize: 15, fontWeight: FontWeight.w500),
            maxLines: 2,
          ),
          const SizedBox(
            height: 43,
          ),
          CustomText(hintText: 'User_name', mycontoller: user,obscutext: false),
          const SizedBox(
            height: 16,
          ),
          CustomText(hintText: 'Password', mycontoller: password,obscutext: true),
          const SizedBox(
            height: 18,
          ),
          CustomButton(
            text: "Login",
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/HomeP');
            },
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            'Forget Your password?',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18, color: Colors.black),
          ),
          const SizedBox(
            height: 30,
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).pushNamed('/Pg');
            },
            child: const Center(
              child: Text.rich(TextSpan(children: [
                TextSpan(
                    text: 'Don’t have an account? ',
                    style: TextStyle(fontSize: 18)),
                TextSpan(
                    text: "Sign up",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
              ])),
            ),
          ),
        ]),
      ],),
    );
  }
}
