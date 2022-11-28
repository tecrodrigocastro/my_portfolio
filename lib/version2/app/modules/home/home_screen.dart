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
            child: PageView(
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
        ],
      ),
    );
  }
}
