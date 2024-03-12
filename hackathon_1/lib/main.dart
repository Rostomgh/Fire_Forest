import 'package:flutter/material.dart';
import 'package:hackathon_1/Alerts/Alert.dart';
import 'package:hackathon_1/Alerts/map.dart';
import 'package:hackathon_1/acceill.dart';
import 'package:hackathon_1/home.dart';
import 'package:hackathon_1/login/login.dart';
import 'package:hackathon_1/login/loginup.dart';
void main() {
  runApp(const MyApp());
}
 
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true),
      
      initialRoute: '/First',
      routes: {
          '/First': (context) => const First(),
          '/Second': (context) => const Second(),
          '/HomeP':(context)=>const Notify(),
          '/Pg':(context)=>const Login (),
          '/alert':(context)=>const AlertP(),
          '/map':(context) => const MapP(),


      },
    );
  }
}
