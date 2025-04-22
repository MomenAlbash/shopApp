import 'package:flutter/material.dart';
import 'package:shopapp/views/LoginView.dart';

void main(){
  runApp(shopApp());
}
class shopApp extends StatelessWidget {
  const shopApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      home: LoginView(),
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
          elevation: 0,
        ),
      ),
    );
  }
}
