import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:redrodrigo_portfolio/utils/color.dart';

Widget aboutCard(context) {
  return Column(
    children: [
      Text(
        "ABOUT ME",
        style: TextStyle(
            color: textColor,
            fontFamily: "Nico",
            fontSize: 35,
            fontWeight: FontWeight.bold),
      ),
      Container(
        height: 300,
        width: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(250),
          color: textColor,
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("images/profile.jpeg"),
          ),
        ),
      ),
      SizedBox(height: 15),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "QUEM SOU EU",
            style: TextStyle(color: textColor, fontFamily: "Nico"),
          ),
          FaIcon(
            FontAwesomeIcons.question,
            color: textColor,
          ),
        ],
      ),
      SizedBox(height: 10),
      Text(
        "Sou Rodrigo Castro, 22, Totalmente apaixonado pelo desenvolvimento mobile.",
        style: TextStyle(color: textColor),
      ),
      Text(
        "Formado em Análise e Desenvolvimento de Sistemas, comecei nesse mundo em 2014,",
        style: TextStyle(color: textColor),
      ),
      Text(
        "quando tive contato com o PHP e desde lá sempre venho estudando e melhorando minhas práticas de programação.",
        style: TextStyle(color: textColor),
      ),
      Text(
        "Atualmente estudando e aplicando conhecimento sobre Flutter me apaixonei de vez pela linguagem,",
        style: TextStyle(color: textColor),
      ),
      Text(
        "Pretendo me tornar um Flutter Developer Expert.",
        style: TextStyle(color: textColor),
      ),
      SizedBox(height: 20),
      Text(
        "HABILIDADES",
        style: TextStyle(color: textColor, fontFamily: "Nico"),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.arrow_forward_ios,
            color: textColor,
          ),
          Text(
            "Flutter,  ",
            style: TextStyle(color: textColor),
          ),
          Text(
            "Firebase,  ",
            style: TextStyle(color: textColor),
          ),
          Text(
            "PHP,  ",
            style: TextStyle(color: textColor),
          ),
          Text(
            "Html,  ",
            style: TextStyle(color: textColor),
          ),
          Text(
            "Bootstrap   ",
            style: TextStyle(color: textColor),
          ),
          Icon(
            Icons.arrow_back_ios,
            color: textColor,
          )
        ],
      ),
    ],
  );
}
