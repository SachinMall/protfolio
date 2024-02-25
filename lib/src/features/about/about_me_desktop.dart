
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:protfolio/src/features/about/widget/experience_desktop.dart';
import 'package:protfolio/src/utils/const.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutMeDesktop extends StatefulWidget {
  const AboutMeDesktop({super.key});

  @override
  State<AboutMeDesktop> createState() => _AboutMeDesktopState();
}

class _AboutMeDesktopState extends State<AboutMeDesktop> {

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
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: screenWidth * 0.05, vertical: screenHeight * 0.05),
      child: Column(
        children: [
          Row(
            children: [
              const Expanded(
                child: Text(
                  'ABOUT ME',
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
                    const Text(
                      "Passionate Flutter front-end developer from Mumbai, with a keen eye for UI/UX design.",
                      style: TextStyle(
                          fontFamily: 'Manrope',
                          fontWeight: FontWeight.w500,
                          fontSize: 32,
                          color: kwhite),
                    ),
                    height10,
                    const Text(
                      "A passionate Flutter frontend developer with a knack for crafting engaging and user-friendly mobile applications. I specialize in building sleek and efficient UIs that deliver seamless experiences. Eager to bring creativity and innovation to every project, I thrive on the challenges of creating beautiful, responsive, and high-performance mobile apps. Let's turn ideas into captivating digital solutions!",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Manrope',
                          color: neutraloff),
                    ),
                    height30,
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () {
                            _launchURL('https://drive.google.com/uc?export=download&id=19bJXZIvupk-ehbGsbLEuZnBx1Z6cOoHl');
                          },
                          child: Text(
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
                          width: screenWidth * 0.09,
                          color: const Color(0xffD3E97A),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 70),
          const Row(
            children: [
              Expanded(
                child: Text(
                  'Capabilities',
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
                    Text(
                      "I am always looking to add more skills.",
                      style: TextStyle(
                          fontFamily: 'Manrope',
                          fontWeight: FontWeight.w500,
                          fontSize: 32,
                          color: kwhite),
                    ),
                    height20,
                    Row(
                      children: [
                        Expanded(child: CustomContainer(name: 'FLUTTER')),
                        kwidth5,
                        Expanded(child: CustomContainer(name: 'DART')),
                        kwidth5,
                        Expanded(child: CustomContainer(name: 'GTIHUB')),
                        kwidth5,
                        Expanded(child: CustomContainer(name: 'GIT')),
                      ],
                    ),
                    height20,
                    Row(
                      children: [
                        Expanded(child: CustomContainer(name: 'FIGMA')),
                        kwidth5,
                        Expanded(child: CustomContainer(name: 'VISUAL STUDIO')),
                        kwidth5,
                        Expanded(
                            child: CustomContainer(name: 'RESPONSIVE DESIGN')),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 70),
          const ExperienceDesktop(),
        ],
      ),
    );
  }
}

class CustomContainer extends StatelessWidget {
  final String name;
  final double? fntsize;
  const CustomContainer({super.key, required this.name, this.fntsize = 16});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        border: Border.all(
          color: const Color(0xff484848),
        ),
      ),
      child: Center(
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            name,
            style: TextStyle(
                fontWeight: FontWeight.w700,
                color: kwhite,
                fontFamily: 'Manrope',
                fontSize: fntsize),
          ),
        ),
      ),
    );
  }
}
