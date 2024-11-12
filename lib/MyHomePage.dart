import 'package:flutter/material.dart';
import 'package:tp/components/MyTextField.dart';
import 'package:tp/components/UIColors.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController name = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController password2 = TextEditingController();
  TextEditingController email = TextEditingController();
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: const Text("Student Registration"),
        )
      ),
      body: Center(
        child: Column(
          children: [
            Mytextfield(
                txtbox: email,
                hintText: "Student Name",
                obsecureText: false,
                color: UIColors.black
            ),
            const SizedBox(height: 20,),
            Mytextfield(
                txtbox: email,
                hintText: "Student Email",
                obsecureText: false,
                color: UIColors.black
            ),
            const SizedBox(height: 20,),
            Mytextfield(
                txtbox: email,
                hintText: "Student Phone",
                obsecureText: false,
                color: UIColors.black
            ),
            const SizedBox(height: 20,),
            Mytextfield(
                txtbox: email,
                hintText: "Student Email",
                obsecureText: false,
                color: UIColors.black
            ),
          ],
        ),
      ),
    );
  }
}