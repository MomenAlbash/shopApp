import 'package:flutter/material.dart';
import 'package:shopapp/views/onBoardingView.dart';

void main(){
  runApp(shopApp());
}
class shopApp extends StatelessWidget {
  const shopApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:const onBoardingView(),
    );
  }
}
