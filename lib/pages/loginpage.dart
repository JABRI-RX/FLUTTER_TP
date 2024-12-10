import 'package:flutter/material.dart';
import 'package:tp/components/MyTextField.dart';
import 'package:tp/components/UIColors.dart';
import 'package:tp/components/menu.dart';
import 'package:fluttertoast/fluttertoast.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({super.key, required this.title});

  final String title;

  @override
  State<LoginPage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<LoginPage> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context){
    return Scaffold(
      drawer: const MenuDrawer(),
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
                hintText: "Email",
                obsecureText: false,
                color: UIColors.black
            ),
            const SizedBox(height: 20,),
            Mytextfield(
                txtbox: password,
                hintText: "Password",
                obsecureText: true,
                color: UIColors.black
            ),
            ElevatedButton(
              // style: ButtonStyle(padding:EdgeInsetsGeometry.lerp(a, b, t)),
                onPressed: (){
                  // login()
                  // Fluttertoast.showToast(msg: "Login Sucessfully ");
                  Navigator.pushReplacementNamed(context, '/main');
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