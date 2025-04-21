import 'package:flutter/material.dart';
import 'package:shopapp/helper/onBoardHelper.dart';
import 'package:shopapp/views/LoginView.dart';
import 'package:shopapp/widgets/onBoardPageViewWidget.dart';

class onBoardingView extends StatelessWidget {
  onBoardingView({super.key});

  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [
          TextButton(
            onPressed: () {
              NavigatorAndFinish(context);
            },
            child: Text('SKIP',style: TextStyle(color: Colors.deepOrange,fontSize: 16),),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            Expanded(
              child: onBoardPageViewWidget(
                controller: _pageController,
              ),
            ),
            SizedBox(height: 50,),
            Row(
              children: [
                buildSmoothPageIndicator(_pageController),
                Spacer(),
                FloatingActionButton(
                  backgroundColor: Colors.deepOrange,
                  onPressed: () {
                    final currentPage = _pageController.page?.round() ?? 0;
                    if (currentPage == onBoardList.length - 1) {
                      NavigatorAndFinish(context);
                    } else {
                      _pageController.nextPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeIn);
                    }
                  },
                  child: const Icon(Icons.arrow_back_ios_new_rounded),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void NavigatorAndFinish(BuildContext context) {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (context) => LoginView(),
      ),
      (route) => false,
    );
  }
}
