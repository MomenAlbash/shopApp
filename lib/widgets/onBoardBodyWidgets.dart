
import 'package:flutter/material.dart';
import 'package:shopapp/Models/onBoardModel.dart';

class onBoardBodyWidget extends StatelessWidget {

  const onBoardBodyWidget({
    required this.onboardModel,
    Key? key,
  }) : super(key: key);
  final onBoardModel onboardModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Container(
            width: double.infinity,
            child:  Image(
              image: AssetImage(onboardModel.image),
            ),
          ),
        ),
         Text(
        onboardModel.title,
          style: const TextStyle(fontSize: 24),
        ),
        const SizedBox(
          height: 20,
        ),
         Text(onboardModel.subtitle),
      ],
    );
  }
}