import 'package:flutter/material.dart';
import 'package:tp/components/MyTextField.dart';
import 'package:tp/components/UIColors.dart';
import 'package:tp/components/toast.dart';
import 'package:tp/services/auth.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key, required this.title});

  final String title;

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController name = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController email = TextEditingController();
  //services
  var auth = AuthService();
  void register(String name,String email,String phone,String password) async{
    if(name.isEmpty ||
        password.isEmpty ||
        phone.isEmpty ||
        email.isEmpty
      ){
      showToast("You Left Some InputFields Emtpy");

    }
    else{
      auth.registerUser(name, email, password, phone);
    }
  }
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
                txtbox: name,
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
                txtbox: phone,
                hintText: "Student Phone",
                obsecureText: false,
                color: UIColors.black
            ),
            const SizedBox(height: 20,),
            Mytextfield(
                txtbox: password,
                hintText: "Student Password",
                obsecureText: true,
                color: UIColors.black
            ),
            const SizedBox(height: 10,),
            ElevatedButton(
                onPressed: (){
                  register(name.text,email.text , phone.text, password.text);
                }, 
                child: const Text("Register ",
                  style: TextStyle(fontSize: 20),
                )
            )
          ],
        ),
      ),
    );
  }
}