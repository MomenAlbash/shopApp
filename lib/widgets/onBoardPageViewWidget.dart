import 'package:flutter/material.dart';
import 'package:shopapp/widgets/onBoardBodyWidgets.dart';

import '../helper/onBoardHelper.dart';

class onBoardPageViewWidget extends StatelessWidget {
  onBoardPageViewWidget({required this.controller, super.key});
  final PageController controller;
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      physics: BouncingScrollPhysics(),
      controller: controller,
      itemCount: onBoardList.length,
      itemBuilder: (context, index) => onBoardBodyWidget(onboardModel: onBoardList[index],),
    );
  }
}
