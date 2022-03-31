import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:redrodrigo_portfolio/utils/color.dart';
import 'package:redrodrigo_portfolio/widgets/about_card_widget.dart';

Widget aboutWidget(context) {
  return Container(
    width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height,
    decoration: BoxDecoration(
      color: primaryColor,
      image: DecorationImage(
        fit: BoxFit.cover,
        image: AssetImage("images/back2.png"),
      ),
    ),
    child: Center(
      child: aboutCard(context),
    ),
  );
}
