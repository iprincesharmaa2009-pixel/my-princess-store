import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          "ACCOUNT",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(16),

        child: Column(
          children: [

            accountTile(
              "PRINCE SHARMA",
              "Name, Mobile, Email details",
            ),

            accountTile(
              "Bank Details",
              "Account number, IFSC, UPI",
            ),

            accountTile(
              "Backup & Restore",
              "Save or restore app data",
            ),

            accountTile(
              "App Settings",
              "Notification and preferences",
            ),

          ],
        ),
      ),
    );
  }


  Widget accountTile(String title, String subtitle) {

    return ExpansionTile(

      title: Text(
        title,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),

      subtitle: Text(subtitle),

      children: const [

        Padding(
          padding: EdgeInsets.all(15),
          child: Text(
            "Details will appear here",
          ),
        ),

      ],
    );
  }
}