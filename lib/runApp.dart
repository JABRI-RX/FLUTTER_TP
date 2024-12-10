import 'package:flutter/material.dart';
import 'package:tp/pages/VocalAssistantApp.dart';
import 'package:tp/pages/loginpage.dart';
import 'package:tp/pages/mainpage.dart';

import 'pages/RegisterPage.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/':(context)=>LoginPage(title: "Login Page"),
        '/registerPage':(context)=>RegisterPage(title: "Register Page"),
        '/main':(context)=>HomePage(),
        '/VOA':(context)=>VocalAssistantApp()
      },
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',

      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: const MyLoginPage(title: 'Student'),
    );
  }
}