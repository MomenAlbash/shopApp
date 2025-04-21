import 'package:flutter/material.dart';
import 'package:shopapp/widgets/onBoardBodyWidgets.dart';

class onBoardingView extends StatelessWidget {
  const onBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                itemCount: 3,
                itemBuilder: (context, index) => onBoardBodyWidget(),
              ),
            ),
            Row(
              children: [
                const Text(
                  'indicator',
                ),
                Spacer(),
                FloatingActionButton(
                  backgroundColor: Colors.deepOrange,
                  onPressed: () {},
                  child: const Icon(Icons.arrow_back_ios_new_rounded),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
