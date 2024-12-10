import 'package:flutter/material.dart';
import 'package:tp/components/toast.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          const DrawerHeader(
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
          const ExpansionTile(
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
          const ListTile(
            title: Text("Stock Price Prediction"),
          ),
          ListTile(
            title: const Text("Vocal Assistant "),
            onTap: (){
              Navigator.pushNamed(context, '/VOA');
            },
          ),
          ListTile(
            title: const Text("RAG"),
          ),
        ],
      ),
    );
  }
}
