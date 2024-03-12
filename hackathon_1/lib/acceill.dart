// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:hackathon_1/Alerts/Alert.dart';
import 'package:hackathon_1/Alerts/account.dart';
import 'package:hackathon_1/Alerts/map.dart';
import 'package:hackathon_1/Alerts/saerch.dart';

class Notify extends StatefulWidget {
  const Notify({super.key});

  @override
  State<Notify> createState() => _NotifyState();
}

class _NotifyState extends State<Notify> {
  List<Widget>Pages=[
   const AlertP(),
   SearchP(),
   MapP(),
   AccountP(),

  ];
 int select = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Pages.elementAt(select),
        
        
        bottomNavigationBar:  GNav(
          
            onTabChange: (index) => setState(() {
                  select = index;
                }),
            gap: 8,
            backgroundColor: Colors.transparent,
            color: Colors.black,
            activeColor: Colors.white,
            tabBackgroundColor: Colors.orange,
            padding: const EdgeInsets.all(15),
            tabs: const [
              GButton(
                icon: Icons.home,
                text: 'Home',
              ),
              GButton(
                icon: Icons.search,
                text: 'Search',
              ),
              GButton(
                icon: Icons.map_outlined,
                text: 'Map',
              ),
              GButton(
                icon: Icons.account_circle,
                text: 'Profile',
              ),
            ]));
  }
}


