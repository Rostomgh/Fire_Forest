import 'package:flutter/material.dart';
import 'package:hackathon_1/compo/Alerts_ty.dart';

class SearchP extends StatefulWidget {
  const SearchP({super.key});

  @override
  State<SearchP> createState() => _SearchPState();
}

class _SearchPState extends State<SearchP> {


List<Alerts_ty> alerts = [
    Alerts_ty(
      title: "Fire in Tizi Ouzou",
      decription: "There is a fire in Tizi Ouzou that threatens many residents",
      image: "assets/img/fire2.jpg",
    ),
    Alerts_ty(
      title: "Fire in the mountains of Batna",
      decription: "The fire is still in its infancy. You can quickly remedy the situation",
      image: "assets/img/ph222.jpg",
    ),
    Alerts_ty(
      title: "A fire on the border with Tebessa Province",
      decription: "The fire is spreading quickly and there is very little support",
      image: "assets/img/ph333.jpg",
    ),
  ];

  List<Alerts_ty> filteredAlerts = [];

  @override
  void initState() {
    filteredAlerts = alerts;
    super.initState();
  }

  void filterAlerts(String query) {
    List<Alerts_ty> searchList = alerts
        .where((alert) => alert.title.toLowerCase().contains(query.toLowerCase()))
        .toList();
    setState(() {
      filteredAlerts = searchList;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              onChanged: (query) => filterAlerts(query),
              decoration: const InputDecoration(
                labelText: 'Recherche d\'Alertes',
                hintText: 'Entrez votre recherche',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: filteredAlerts.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(filteredAlerts[index].title),
                  subtitle: Text(filteredAlerts[index].decription),
                
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}