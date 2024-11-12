import 'package:flutter/material.dart';
import 'package:tp/components/MyTextField.dart';
import 'package:tp/components/UIColors.dart';
import 'package:tp/menu.dart';

class MyLoginPage extends StatefulWidget {
  const MyLoginPage({super.key, required this.title});

  final String title;

  @override
  State<MyLoginPage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyLoginPage> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context){
    return Scaffold(
      drawer: MenuDrawer(),
      appBar: AppBar(
          title: const Center(
            child: const Text("Student login"),
          )
      ),
      body: Center(
        child: Column(
          children: [
            Mytextfield(
                txtbox: email,
                hintText: "Student email",
                obsecureText: false,
                color: UIColors.black
            ),
            const SizedBox(height: 20,),
            Mytextfield(
                txtbox: password,
                hintText: "Student Email",
                obsecureText: false,
                color: UIColors.black
            ),
            ElevatedButton(onPressed: (){

            },
                child: const Text("Login")
            ),
            InkWell(onTap: (){
              Navigator.pushNamed(context,'/registerPage');
            },
            child: const Text("Dont Have Account ? "),
            )
          ],
        ),
      ),
    );
  }
}