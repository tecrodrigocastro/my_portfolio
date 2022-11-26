import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:redrodrigo_portfolio/version1/utils/color.dart';
import 'package:url_launcher/url_launcher.dart';

Widget contactMe(context) {
  return Container(
    height: 150,
    width: MediaQuery.of(context).size.width,
    decoration: BoxDecoration(
      color: primaryColor,
      image: DecorationImage(
        fit: BoxFit.cover,
        image: AssetImage("images/back2.png"),
      ),
    ),
    child: Center(
      child: Column(
        children: [
          Text(
            "CONTACT ME",
            style: TextStyle(
                color: textColor,
                fontFamily: "Nico",
                fontSize: 35,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  String url = "https://github.com/tecrodrigocastro";
                  launch(url);
                },
                child: FaIcon(
                  FontAwesomeIcons.github,
                  color: textColor,
                ),
              ),
              TextButton(
                onPressed: () {
                  String url =
                      "https://www.linkedin.com/in/rodrigo-castro-8422a7145/";
                  launch(url);
                },
                child: FaIcon(
                  FontAwesomeIcons.linkedin,
                  color: textColor,
                ),
              ),
              TextButton(
                onPressed: () {
                  String url = "https://www.instagram.com/redrodrigoc/";
                  launch(url);
                },
                child: FaIcon(
                  FontAwesomeIcons.instagram,
                  color: textColor,
                ),
              ),
              TextButton(
                onPressed: () {
                  String url = "mailto:tec.rodrigocastro@gmail.com";
                  launch(url);
                },
                child: Icon(
                  Icons.email_outlined,
                  color: textColor,
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
