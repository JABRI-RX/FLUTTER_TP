import 'package:flutter/material.dart';

class VocalAssistantApp extends StatefulWidget {
  const VocalAssistantApp({super.key});

  @override
  State<VocalAssistantApp> createState() => _VocalAssistantAppState();
}

class _VocalAssistantAppState extends State<VocalAssistantApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Vocal Assisant")),
      ),
      // body: ,
      floatingActionButton: ElevatedButton(
          onPressed: (){

          },
          child: Icon(Icons.mic)
      ),
    );
  }
}
