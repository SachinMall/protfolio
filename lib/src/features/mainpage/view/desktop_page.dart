import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:protfolio/src/features/about/about_me_desktop.dart';
import 'package:protfolio/src/features/connect/connect_desktop.dart';
import 'package:protfolio/src/features/mainpage/view/project_desktop.dart';
import 'package:protfolio/src/utils/const.dart';
import 'package:url_launcher/url_launcher.dart';

class DesktopPage extends StatefulWidget {
  const DesktopPage({super.key});

  @override
  State<DesktopPage> createState() => _DesktopPageState();
}

class _DesktopPageState extends State<DesktopPage> {
  final GlobalKey _aboutMeKey = GlobalKey();
  final ScrollController _scrollController = ScrollController();

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
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: screenWidth * 0.05, vertical: screenHeight * 0.05),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'HI, I AM',
                      style: TextStyle(
                          fontSize: 100,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Bebas Neue',
                          height: 1.0,
                          color: kwhite),
                    ),
                    AnimatedTextKit(
                      animatedTexts: [
                        TypewriterAnimatedText(
                          'SACHIN MALL.',
                          textStyle: const TextStyle(
                              fontSize: 100,
                              fontWeight: FontWeight.w400,
                              height: 1.0,
                              fontFamily: 'Bebas Neue',
                              color: kwhite),
                          speed: const Duration(milliseconds: 100),
                        ),
                      ],
                      totalRepeatCount: 2,
                      pause: const Duration(milliseconds: 100),
                      displayFullTextOnTap: true,
                      stopPauseOnTap: true,
                    ),
                    height5,
                    const Text(
                      'A Flutter fron-end developer passionate about building\naccessible and user friendly Mobile Application.',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Manrope',
                          color: neutraloff),
                    ),
                    height30,
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            height: 48,
                            width: screenWidth * 0.12,
                            decoration: BoxDecoration(
                              color: const Color(0xffD3E97A),
                              borderRadius: BorderRadius.circular(26),
                            ),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Flexible(
                                  child: FittedBox(
                                    fit: BoxFit.scaleDown,
                                    child: Text(
                                      'CONTACT ME',
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700,
                                          fontFamily: 'Manrope',
                                          color: kblack),
                                    ),
                                  ),
                                ),
                                Icon(Icons.circle, color: kblack, size: 12),
                              ],
                            ),
                          ),
                        ),
                        kwidth15,
                        GestureDetector(
                            onTap: () {
                              _launchURL(
                                  "https://www.linkedin.com/in/sachin-mall-73638a259/");
                            },
                            child:
                                SvgPicture.asset('assets/images/github.svg')),
                        kwidth15,
                        GestureDetector(
                            onTap: () {
                              _launchURL("https://github.com/SachinMall");
                            },
                            child: SvgPicture.asset('assets/images/link.svg')),
                      ],
                    )
                  ],
                ),
              ),
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.asset('assets/images/profile_pic.png',
                      fit: BoxFit.cover,
                      height: screenHeight * 0.75,
                      width: screenWidth * 0.7),
                ),
              ),
            ],
          ),
        ),
        const Divider(
          color: Color(0xff484848),
        ),
        const ProjectDesktop(),
        const Divider(
          color: Color(0xff484848),
        ),
        const AboutMeDesktop(),
        const Divider(
          color: Color(0xff484848),
        ),
        height15,
        const ConnectDesktop(),
        height40,
      ],
    );
  }
}
