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
                const SizedBox(height: 20),
                Text(
                  'Eu crio Apps e WebApps onde as tecnologias \natendem à criatividade',
                  style: TextStyle(
                    color: unSelectedTextColor,
                    fontFamily: 'FiraCode',
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 15),
                InkWell(
                  onTap: () => sectionClick(3),
                  child: Container(
                    height: 35,
                    width: 140,
                    decoration: BoxDecoration(
                      border: Border.all(color: primaryColor),
                    ),
                    child: Center(
                      child: Text(
                        'Contact me !!',
                        style: TextStyle(color: textColor),
                      ),
                    ),
                  ),
                ),
                Visibility(
                  visible: false,
                  child: OutlinedButton(
                    style:
                        OutlinedButton.styleFrom(backgroundColor: primaryColor),
                    onPressed: () {
                      sectionClick(3);
                    },
                    child: Text(
                      'Contact me !!',
                      style: TextStyle(color: textColor),
                    ),
                  ),
                ),
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
                    height: 40,
                    width: 200,
                    decoration: BoxDecoration(
                      color: backgroundColor,
                      border: Border.all(color: primaryColor),
                    ),
                    child: Center(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image(image: AssetImage('images/icons/github.png')),
                        Image(image: AssetImage('images/icons/linkedin.png')),
                        Image(image: AssetImage('images/icons/email.png')),
                        Text(
                          'RODRIGO CASTRO 😎',
                          style: TextStyle(color: textColor),
                        ),
                      ],
                    )),
                  ),
                )
              ],
            )
          ],
        ),
        const Spacer(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 100),
            child: Container(
              height: 70,
              width: 500,
              decoration: BoxDecoration(
                border: Border.all(color: primaryColor),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      '"The first duty of intelligence is to doubt itself"',
                      style: TextStyle(color: textColor),
                    ),
                  ),
                  Divider(color: backgroundColor),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      '- Albert Einstein ',
                      style: TextStyle(color: textColor),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
