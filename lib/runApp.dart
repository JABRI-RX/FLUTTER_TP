import 'package:flutter/material.dart';
import 'package:tp/loginpage.dart';

import 'MyHomePage.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/':(context)=>MyLoginPage(title: "Login Page"),
        '/registerPage':(context)=>MyHomePage(title: "Register Page"),
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