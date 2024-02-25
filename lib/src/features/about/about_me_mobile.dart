import 'dart:developer';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:protfolio/src/features/about/about_me_desktop.dart';
import 'package:protfolio/src/features/about/widget/experience_mobile.dart';
import 'package:protfolio/src/utils/const.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutMeMobile extends StatefulWidget {
  const AboutMeMobile({super.key});

  @override
  State<AboutMeMobile> createState() => _AboutMeMobileState();
}

class _AboutMeMobileState extends State<AboutMeMobile> {
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
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'ABOUT ME',
          style: TextStyle(
              fontSize: 43,
              fontWeight: FontWeight.w400,
              fontFamily: 'Bebas Neue',
              color: kwhite),
        ),
        height10,
        const Text(
          "Passionate Flutter front-end developer from Mumbai, with a keen eye for UI/UX design.",
          style: TextStyle(
              fontFamily: 'Manrope',
              fontWeight: FontWeight.w500,
              fontSize: 24,
              color: kwhite),
        ),
        height10,
        const Text(
          "A passionate Flutter frontend developer with a knack for crafting engaging and user-friendly mobile applications. I specialize in building sleek and efficient UIs that deliver seamless experiences. Eager to bring creativity and innovation to every project, I thrive on the challenges of creating beautiful, responsive, and high-performance mobile apps. Let's turn ideas into captivating digital solutions!",
          style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              fontFamily: 'Manrope',
              color: neutraloff),
        ),
        height30,
        GestureDetector(
          onTap: () {
            _launchURL(
                'https://drive.google.com/uc?export=download&id=19bJXZIvupk-ehbGsbLEuZnBx1Z6cOoHl');
          },
          child: const Text(
            'MORE ABOUT ME',
            style: TextStyle(
                fontSize: 16,
                fontFamily: 'Manrope',
                fontWeight: FontWeight.w700,
                color: Color(0xffD3E97A)),
          ),
        ),
        Container(
          height: 1,
          width: screenWidth * 0.26,
          color: const Color(0xffD3E97A),
        ),
        height30,
        ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Image.asset('assets/images/sachin.jpg', fit: BoxFit.contain),
        ),
        const SizedBox(height: 70),
        const Text(
          'Capabilities',
          style: TextStyle(
              fontSize: 43,
              fontWeight: FontWeight.w400,
              fontFamily: 'Bebas Neue',
              color: kwhite),
        ),
        const Text(
          "I am always looking to add more skills.",
          style: TextStyle(
              fontFamily: 'Manrope',
              fontWeight: FontWeight.w500,
              fontSize: 16,
              color: neutraloff),
        ),
        height20,
        const Row(
          children: [
            Expanded(
              child: CustomContainer(name: 'FLUTTER', fntsize: 14),
            ),
            kwidth5,
            Expanded(child: CustomContainer(name: 'DART', fntsize: 14)),
            kwidth5,
            Expanded(
              child: CustomContainer(name: 'GTIHUB', fntsize: 14),
            ),
            kwidth5,
            Expanded(
              child: CustomContainer(name: 'GIT', fntsize: 14),
            ),
          ],
        ),
        height20,
        const Row(
          children: [
            Expanded(
              child: CustomContainer(name: 'FIGMA', fntsize: 14),
            ),
            kwidth5,
            Expanded(
              child: CustomContainer(name: 'VISUAL STUDIO', fntsize: 14),
            ),
            kwidth5,
            Expanded(
              child: CustomContainer(name: 'RESPONSIVE DESIGN', fntsize: 14),
            ),
          ],
        ),
        const SizedBox(height: 70),
        const ExperienceMobile(),
      ],
    );
  }
}
