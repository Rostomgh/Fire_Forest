// ignore_for_file: prefer_const_constructors

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hackathon_1/login/login.dart';

class First extends StatefulWidget {
  const First({super.key});

  @override
  State<First> createState() => _firstState();
}

class _firstState extends State<First> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 5),
        () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (BuildContext context) => Second())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body: Column(
        
        children: [
         SizedBox(height: 300,),
         Center(child: ClipRRect(child: Image.asset("assets/img/LOGOOOOO.jpg",width: 152,height: 151,),borderRadius: BorderRadius.circular(90),)),
          
          SizedBox(height: 10),
           Text(
              'FireGuard',
              style: TextStyle(fontSize: 30),
            ),
        ],
      )

    );
  }
}

/*Stack(
        children: [
          Positioned(
            child: Text(
              'FireGuard',
              style: TextStyle(fontSize: 30),
            ),
            left: 140,
            right: 147,
            top: 473,
            bottom: 309,
          ),
          Positioned(
            left: 146,
            right: 147,
            top: 364,
            bottom: 366,
            child: ClipRRect(
              child: Image.asset(
                "assets/img/LOGOOOOO.jpg",
              ),
              borderRadius: BorderRadius.circular(30),
            ),
          ),
        ],
      ),
*/