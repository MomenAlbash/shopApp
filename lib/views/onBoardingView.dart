import 'package:flutter/material.dart';
import 'package:shopapp/widgets/onBoardBodyWidgets.dart';

class onBoardingView extends StatelessWidget {
  const onBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        itemCount: 3,
          itemBuilder:(context, index) => onBoardBodyWidget(),
      ),
    );
  }
}

