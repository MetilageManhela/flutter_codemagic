import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:portagem_web/screens/login.dart';
void main() => runApp(const MyApp()); 
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

@override
  Widget build(BuildContext context) {
    return  MaterialApp(
    
      debugShowCheckedModeBanner: false,
      //home:   const MainMenu(),
      home: const LoginPage(),
      builder: EasyLoading.init(),
    );
  }
}