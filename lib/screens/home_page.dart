import 'package:flutter/material.dart';
import 'package:redrodrigo_portfolio/utils/color.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:redrodrigo_portfolio/widgets/about_me_widget.dart';
import 'package:redrodrigo_portfolio/widgets/contact_me_widget.dart';
import 'package:redrodrigo_portfolio/widgets/home_widget.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "RODRIGO CASTRO",
          style: TextStyle(fontFamily: "Nico"),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Contact Me",
                    style: TextStyle(fontFamily: "Nico",color: textColor),
                  ),
                ),
                SizedBox(width: 15),
              ],
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            homeWidget(context),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                color: primaryColor,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("images/back2.png"),
                ),
              ),
              child: Column(
                children: [
                  SizedBox(height: 70),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Text(
                              "POMODORO APP",
                              style: TextStyle(
                                  color: textColor,
                                  fontSize: 40,
                                  fontFamily: "Nico",
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "UM APP PARA TROCAS DE RECEITAS",
                              style: TextStyle(
                                color: textColor,
                                fontFamily: "Nico",
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "DESENVOLVI A UI DO APP PARA ESTUDOS",
                              style: TextStyle(
                                color: textColor,
                                fontFamily: "Nico",
                              ),
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                TextButton(
                                  onPressed: () {
                                    String url =
                                        "https://github.com/tecrodrigocastro/pomoadoro-app";
                                    launch(url);
                                  },
                                  child: FaIcon(
                                    FontAwesomeIcons.github,
                                    color: textColor,
                                  ),
                                ),
                                SizedBox(width: 5),
                                TextButton(
                                  onPressed: () {
                                    String url =
                                        "https://www.linkedin.com/posts/rodrigo-castro-8422a7145_flutter-mobile-desenvolvimento-activity-6908220856305352704-qDBm?utm_source=linkedin_share&utm_medium=member_desktop_web";
                                    launch(url);
                                  },
                                  child: FaIcon(
                                    FontAwesomeIcons.linkedin,
                                    color: textColor,
                                  ),
                                ),
                                SizedBox(width: 5),
                                TextButton(
                                  onPressed: () {
                                    String url =
                                        "https://www.figma.com/file/ldytvp3KXfRz670QBdUGdv/app-PomoAdoro?node-id=101%3A3";
                                    launch(url);
                                  },
                                  child: FaIcon(
                                    FontAwesomeIcons.figma,
                                    color: textColor,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 25),
                            Container(
                              height: 200,
                              width: 400,
                              decoration: BoxDecoration(
                                color: textColor,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(25),
                                    bottomRight: Radius.circular(25)),
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage("images/telas.png")),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 250),
                        Column(
                          children: [
                            Container(
                              height: 200,
                              width: 400,
                              decoration: BoxDecoration(
                                color: textColor,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(25),
                                    bottomRight: Radius.circular(25)),
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage("images/music.png")),
                              ),
                            ),
                            SizedBox(height: 25),
                            Text(
                              "MUSIC APP",
                              style: TextStyle(
                                  color: textColor,
                                  fontSize: 40,
                                  fontFamily: "Nico",
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "UI DA COMUNIDADE FIGMA",
                              style: TextStyle(
                                color: textColor,
                                fontFamily: "Nico",
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "DESENVOLVI A UI DO APP PARA ESTUDOS",
                              style: TextStyle(
                                color: textColor,
                                fontFamily: "Nico",
                              ),
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                TextButton(
                                  onPressed: () {
                                    String url =
                                        "https://github.com/tecrodrigocastro/musicapp";
                                    launch(url);
                                  },
                                  child: FaIcon(
                                    FontAwesomeIcons.github,
                                    color: textColor,
                                  ),
                                ),
                                SizedBox(width: 5),
                                TextButton(
                                  onPressed: () {
                                    String url =
                                        "https://www.figma.com/file/iOPrz26zIfKI6ZYB9DJmcb/Music-App-(Community)?node-id=0%3A1";
                                    launch(url);
                                  },
                                  child: FaIcon(
                                    FontAwesomeIcons.figma,
                                    color: textColor,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            aboutWidget(context),
            contactMe(context)
          ],
        ),
      ),
    );
  }
}
