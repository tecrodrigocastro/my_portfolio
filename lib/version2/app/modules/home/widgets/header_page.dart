// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:redrodrigo_portfolio/version2/app/global/color_schema.dart';
import 'package:redrodrigo_portfolio/version2/app/global/sections.dart';

class HeaderPage extends StatelessWidget {
  SectionCallback sectionClick;
  HeaderPage({
    Key? key,
    required this.sectionClick,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    text: 'RED RODRIGO is a ',
                    style: TextStyle(
                      fontSize: 32,
                      color: textColor,
                      fontFamily: 'FiraCode',
                      fontWeight: FontWeight.w600,
                    ),
                    children: [
                      TextSpan(
                        text: 'Full Stack Developer \n',
                        style: TextStyle(
                          color: primaryColor,
                          fontFamily: 'FiraCode',
                          fontWeight: FontWeight.w600,
                        ),
                        children: [
                          TextSpan(
                            text: 'in ',
                            style: TextStyle(
                              color: textColor,
                              fontFamily: 'FiraCode',
                              fontWeight: FontWeight.w600,
                            ),
                            children: [
                              TextSpan(
                                text: 'Flutter and Laravel',
                                style: TextStyle(
                                  color: primaryColor,
                                  fontFamily: 'FiraCode',
                                  fontWeight: FontWeight.w600,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Eu crio Apps e WebApps onde as tecnologias \natendem à criatividade',
                  style: TextStyle(
                    color: unSelectedTextColor,
                    fontFamily: 'FiraCode',
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  height: 40,
                  width: 100,
                  decoration: BoxDecoration(
                    border: Border.all(color: primaryColor),
                  ),
                ),
                OutlinedButton(
                  style:
                      OutlinedButton.styleFrom(backgroundColor: primaryColor),
                  onPressed: () {
                    sectionClick(3);
                  },
                  child: Text(
                    'Contact me !!',
                    style: TextStyle(color: textColor),
                  ),
                )
              ],
            ),
            Stack(
              children: [
                CircleAvatar(
                  maxRadius: 250,
                  backgroundImage: const AssetImage('images/profile.png'),
                  backgroundColor: backgroundColor,
                ),
                const Positioned(
                  top: 70,
                  //right: 50,
                  child: Image(
                    height: 70,
                    width: 70,
                    image: AssetImage('images/lines.png'),
                  ),
                ),
                const Positioned(
                  bottom: 50,
                  right: 50,
                  child: Image(
                    height: 70,
                    width: 70,
                    image: AssetImage('images/dots_white.png'),
                  ),
                ),
                Positioned(
                  bottom: 1,
                  right: 70,
                  left: 50,
                  child: Container(
                    height: 20,
                    width: 200,
                    decoration: BoxDecoration(
                      color: backgroundColor,
                      border: Border.all(color: primaryColor),
                    ),
                    child: Center(
                      child: Text(
                        'RED RODRIGO',
                        style: TextStyle(color: textColor),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ],
    );
  }
}
