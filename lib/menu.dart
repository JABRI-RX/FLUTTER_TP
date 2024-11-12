import 'package:flutter/material.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Drawer(
      child: Column(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomRight,
                  colors:[
                Colors.blueAccent,
                Colors.blue
              ])
            ),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 30,
                ),
                SizedBox(width: 20,),
                Text("User")
              ],
            )
          ),
          ExpansionTile(
            title: const Text("Image Classification Model"),
            children: [
              ListTile(
                title: const Text("ANN Model"),
              ),
              ListTile(
                title: const Text("CNN Model"),
              ),

            ],
          ),
          ListTile(
            title: Text("Stock Price Prediction"),
          ),
          ListTile(
            title: Text("Vocal Assistant "),
          ),
          ListTile(
            title: Text("RAG"),
          ),
        ],
      ),
    );
  }
}
