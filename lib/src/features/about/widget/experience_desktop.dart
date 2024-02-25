import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:protfolio/src/utils/const.dart';
import 'package:url_launcher/url_launcher.dart';

class ExperienceDesktop extends StatefulWidget {
  const ExperienceDesktop({super.key});

  @override
  State<ExperienceDesktop> createState() => _ExperienceDesktopState();
}

class _ExperienceDesktopState extends State<ExperienceDesktop> {
  Future<void> _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url, forceWebView: true, enableJavaScript: true);
    } else {
      throw "Can not launch url";
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Row(
          children: [
            const Expanded(
              child: Text(
                'Experience',
                style: TextStyle(
                    fontSize: 76,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Bebas Neue',
                    color: kwhite),
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Flutter Intern",
                        style: TextStyle(
                            fontFamily: 'Manrope',
                            fontWeight: FontWeight.w500,
                            fontSize: 24,
                            color: kwhite),
                      ),
                      Text(
                        "Nov 2023 - Present",
                        style: TextStyle(
                            fontFamily: 'Manrope',
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                            color: neutraloff),
                      ),
                    ],
                  ),
                  height10,
                  GestureDetector(
                    onTap: () {
                      _launchURL('https://www.ricoz.in/');
                    },
                    child: const Text(
                      "Ricoz IT",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Manrope',
                        color: Color(0xffD3E97A),
                      ),
                    ),
                  ),
                  height10,
                  const Text(
                    "I design and implement the user interface for the ADS Impact app, a performance marketing tool for eCommerce businesses. Using Flutter, I create responsive UI components, collaborate with cross-functional teams, and troubleshoot UI-related issues. Achievements include enhancing key UI features for an optimal user experience.",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: neutraloff,
                        fontFamily: 'Manrope'),
                  ),
                  height30,
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
