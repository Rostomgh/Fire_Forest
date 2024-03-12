import 'package:flutter/material.dart';
import 'package:hackathon_1/compo/Alerts_ty.dart';

class AlertP extends StatefulWidget {
  const AlertP({Key? key}) : super(key: key);

  @override
  State<AlertP> createState() => _AlertPState();
}

class _AlertPState extends State<AlertP> {
  List<Alerts_ty> alerts = [
    Alerts_ty(
      title: "Fire in Tizi Ouzou",
      decription: "There is a fire in Tizi Ouzou that threatens many residents",
      image: "assets/img/fire2.jpg",
    ),
    Alerts_ty(
      title: "Fire in the mountains of Batna",
      decription:
          "The fire is still in its infancy. You can quickly remedy the situation",
      image: "assets/img/ph222.jpg",
    ),
    Alerts_ty(
      title: "A fire on the border with Tebessa Province",
      decription:
          "The fire is spreading quickly and there is very little support",
      image: "assets/img/ph333.jpg",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        elevation: 3,
        title: const Text(
          'FireGuard',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: alerts.length,
        itemBuilder: (context, i) {
          return Card(
            elevation: 5, // Add elevation for a shadow effect
            shape: RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.circular(15), // Customize border radius
            ),
            margin: const EdgeInsets.all(
                10), // Add margin for spacing between cards

            child: ListTile(
              onTap: () {
                Navigator.pushNamed(context, '/map');
              },
              contentPadding:
                  const EdgeInsets.all(16), // Add padding to ListTile content
              title: Text(
                alerts[i].title,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                alerts[i].decription,
                style: TextStyle(fontSize: 16),
              ),
              leading: ClipRRect(
                borderRadius:
                    BorderRadius.circular(8), // Clip image to rounded corners
                child: Image.asset(
                  alerts[i].image,
                  width: 60,
                  height: 60,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
