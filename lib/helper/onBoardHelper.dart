import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../Models/onBoardModel.dart';

List<onBoardModel> onBoardList = [
  onBoardModel(
    image: 'assets/images/images (8).jpg',
    title: 'on Board 1 title',
    subtitle: 'on Board 1 Body',
  ),
  onBoardModel(
    image: 'assets/images/images (8).jpg',
    title: 'on Board 2 title',
    subtitle: 'on Board 2 Body',
  ),
  onBoardModel(
    image: 'assets/images/images (8).jpg',
    title: 'on Board 3 title',
    subtitle: 'on Board 3 Body',
  ),
];
SmoothPageIndicator buildSmoothPageIndicator(PageController _pageController ) {
  return SmoothPageIndicator(
      controller: _pageController,
      count: onBoardList.length);
}