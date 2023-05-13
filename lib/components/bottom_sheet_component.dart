import 'package:flutter/material.dart';

import '../pages/first_page.dart';
import '../pages/second_page.dart';
import '../pages/third_page.dart';

class BottomSheetComponent extends StatefulWidget {
  const BottomSheetComponent({super.key});

  @override
  State<BottomSheetComponent> createState() => _BottomSheetComponentState();
}

class _BottomSheetComponentState extends State<BottomSheetComponent> {
  PageController pageController = PageController();

  ///
  @override
  void initState() {
    super.initState();

    pageController.addListener(
      () {
        setState(() {});
      },
    );
  }

  ///
  @override
  Widget build(BuildContext context) {
    final progress = pageController.hasClients ? (pageController.page ?? 0) : 0;

    return SizedBox(
      height: 400,
      child: Stack(
        fit: StackFit.expand,
        children: [
          //

          Column(
            children: [
              const SizedBox(height: 16),
              Expanded(
                child: PageView(
                  controller: pageController,
                  children: const [FirstPage(), SecondPage(), ThirdPage()],
                ),
              ),
            ],
          ),

          //

          Positioned(
            height: 56,
            bottom: 32,
            right: 16,
            child: GestureDetector(
              onTap: () {
                if (pageController.page == 0) {
                  pageController.animateToPage(
                    1,
                    duration: const Duration(milliseconds: 400),
                    curve: Curves.ease,
                  );
                }
              },
              child: Text(progress.toString()),
            ),
          )

          //
        ],
      ),
    );
  }
}
