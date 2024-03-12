import 'package:flutter/material.dart';

class AccountP extends StatefulWidget {
  const AccountP({super.key});

  @override
  State<AccountP> createState() => _AccountPState();
}

class _AccountPState extends State<AccountP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text('Profile'),
      ),
      body: SizedBox(
        height: 270,
        child: Center(
          
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/img/LOGOOOOO.jpg'), 
              ),
              SizedBox(height: 20),
              Text(
                'Nom Utilisateur',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Email@example.com', 
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  
                },
                child: Text('Modifier le profil'),
              ),
            ],
          ),
        ),
      ),



    );
  }
}