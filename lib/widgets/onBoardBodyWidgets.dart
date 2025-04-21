
import 'package:flutter/material.dart';

class onBoardBodyWidget extends StatelessWidget {
  const onBoardBodyWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 600,
            width: double.infinity,
            child: const Image(
              image: AssetImage('assets/images/images (8).jpg'),
            ),
          ),
          const Text(
            'On Board 1 Title',
            style: TextStyle(fontSize: 24),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text('On Board 1 Body'),
        ],
      ),
    );
  }
}