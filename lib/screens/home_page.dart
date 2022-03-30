import 'package:flutter/material.dart';
import 'package:redrodrigo_portfolio/utils/color.dart';

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
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 3,
              color: Colors.red,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 3,
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
