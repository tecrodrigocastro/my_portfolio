import 'package:flutter/material.dart';
import 'package:redrodrigo_portfolio/utils/color.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
          "RED RODRIGO",
          style: TextStyle(fontFamily: "Nico"),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text("Work", style: TextStyle(fontFamily: "Nico")),
                SizedBox(width: 15),
                Text("About Me", style: TextStyle(fontFamily: "Nico")),
                SizedBox(width: 15),
                Text("Contact Me", style: TextStyle(fontFamily: "Nico")),
                SizedBox(width: 15),
              ],
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: primaryColor,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("images/back1.jpeg"),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    height: 100,
                    width: 100,
                    image: AssetImage(
                      "images/flutter.png",
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Flutter Developer",
                    style: TextStyle(
                        fontFamily: "Nico",
                        fontWeight: FontWeight.bold,
                        color: textColor,
                        fontSize: 35),
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
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              color: Colors.red,
              child: Center(
                child: Text("em construção"),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              color: Colors.blue,
              child: Center(
                child: Text("em construção"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
