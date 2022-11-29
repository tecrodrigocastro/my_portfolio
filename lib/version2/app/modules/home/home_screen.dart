import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:redrodrigo_portfolio/version2/app/global/color_schema.dart';
import 'package:redrodrigo_portfolio/version2/app/global/custom_app_bar.dart';
import 'package:redrodrigo_portfolio/version2/app/modules/home/widgets/header_page.dart';

class HomeScreenV2 extends StatefulWidget {
  const HomeScreenV2({Key? key}) : super(key: key);

  @override
  State<HomeScreenV2> createState() => _HomeScreenV2State();
}

class _HomeScreenV2State extends State<HomeScreenV2> {
  final pageController = PageController();
  bool pageIsScrolling = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: customAppBar((section) {
        pageController.animateToPage(
          section,
          duration: const Duration(milliseconds: 500),
          curve: Curves.ease,
        );
      }),
      body: Column(
        children: [
          Expanded(
            child: Listener(
              onPointerMove: (pointerMove) {
                if (pointerMove is PointerMoveEvent) {
                  _onScroll(pointerMove.delta.dy * -1);
                }
              },
              onPointerSignal: (pointerSignal) {
                if (pointerSignal is PointerScrollEvent) {
                  _onScroll(pointerSignal.scrollDelta.dy);
                }
              },
              child: PageView(
                physics: const NeverScrollableScrollPhysics(),
                pageSnapping: true,
                controller: pageController,
                scrollDirection: Axis.vertical,
                allowImplicitScrolling: true,
                children: [
                  HeaderPage(
                    sectionClick: (section) {
                      pageController.animateToPage(
                        section,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.ease,
                      );
                    },
                  ),
                  Container(
                    height: 500,
                    color: Colors.green,
                  ),
                  Container(
                    height: 500,
                    color: Colors.blue,
                  ),
                  Container(
                    height: 500,
                    color: Colors.yellow,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _onScroll(double offset) {
    if (pageIsScrolling == false) {
      pageIsScrolling = true;
      if (offset > 0) {
        pageController
            .nextPage(
                duration: Duration(milliseconds: 300), curve: Curves.easeInOut)
            .then((value) => pageIsScrolling = false);

        print('scroll down');
      } else {
        pageController
            .previousPage(
                duration: Duration(milliseconds: 300), curve: Curves.easeInOut)
            .then((value) => pageIsScrolling = false);
        print('scroll up');
      }
    }
  }
}
