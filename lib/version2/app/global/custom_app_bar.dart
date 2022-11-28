import 'package:flutter/material.dart';
import 'package:redrodrigo_portfolio/version2/app/global/color_schema.dart';
import 'package:redrodrigo_portfolio/version2/app/global/sections.dart';

PreferredSize customAppBar(SectionCallback sectionClick) {
  return PreferredSize(
    preferredSize: const Size.fromHeight(100.0),
    child: Container(
      decoration: BoxDecoration(color: backgroundColor),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'RED RODRIGO',
              style: TextStyle(color: textColor),
            ),
            Row(
              children: [
                TextButton(
                  onPressed: () {
                    sectionClick(0);
                  },
                  child: RichText(
                    text: TextSpan(
                      text: '#',
                      style: TextStyle(color: primaryColor),
                      children: [
                        TextSpan(
                          text: 'home',
                          style: TextStyle(color: textColor),
                        ),
                      ],
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    sectionClick(1);
                  },
                  child: RichText(
                    text: TextSpan(
                      text: '#',
                      style: TextStyle(color: primaryColor),
                      children: [
                        TextSpan(
                          text: 'works',
                          style: TextStyle(color: textColor),
                        ),
                      ],
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    sectionClick(2);
                  },
                  child: RichText(
                    text: TextSpan(
                      text: '#',
                      style: TextStyle(color: primaryColor),
                      children: [
                        TextSpan(
                          text: 'about-me',
                          style: TextStyle(color: textColor),
                        ),
                      ],
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    sectionClick(3);
                  },
                  child: RichText(
                    text: TextSpan(
                      text: '#',
                      style: TextStyle(color: primaryColor),
                      children: [
                        TextSpan(
                          text: 'contacts',
                          style: TextStyle(color: textColor),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    ),
  );
}
