import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:protfolio/src/features/about/about_me_mobile.dart';
import 'package:protfolio/src/features/connect/connect_mobile.dart';
import 'package:protfolio/src/features/mainpage/view/project_mobile.dart';
import 'package:protfolio/src/utils/const.dart';
import 'package:url_launcher/url_launcher.dart';

class MobilePage extends StatefulWidget {
  const MobilePage({super.key});

  @override
  State<MobilePage> createState() => _MobilePageState();
}

class _MobilePageState extends State<MobilePage> {
  final GlobalKey _aboutMeKey = GlobalKey();

  Future<void> _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url, forceWebView: true, enableJavaScript: true);
    } else {
      throw "Can not launch url";
    }
  }

  void _scrollToAboutMe() {
    Scrollable.ensureVisible(_aboutMeKey.currentContext!,
        duration: const Duration(milliseconds: 500));
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'HI, I AM',
                  style: TextStyle(
                      fontSize: 57,
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
                          fontSize: 57,
                          fontWeight: FontWeight.w400,
                          height: 1.0,
                          fontFamily: 'Bebas Neue',
                          color: kwhite),
                      speed: const Duration(milliseconds: 100),
                    ),
                  ],
                  totalRepeatCount: 4,
                  // pause: const Duration(milliseconds: 100),
                  displayFullTextOnTap: true,
                  stopPauseOnTap: true,
                ),
                height10,
                const Text(
                  'A Flutter fron-end developer\npassionate about building accessible and user\nfriendly Mobile Application.',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Manrope',
                      color: neutraloff),
                ),
                height30,
                Row(
                  children: [
                    GestureDetector(
                      onTap: _scrollToAboutMe,
                      child: Container(
                        height: 48,
                        width: screenWidth * 0.3,
                        decoration: BoxDecoration(
                          color: const Color(0xffD3E97A),
                          borderRadius: BorderRadius.circular(26),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            kwidth10,
                            const FittedBox(
                              fit: BoxFit.contain,
                              child: Text(
                                'CONTACT ME',
                                // overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: 'Manrope',
                                    color: kblack),
                              ),
                            ),
                            kwidth5,
                            Container(
                              height: 36,
                              width: 36,
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle, color: kblack),
                              child: const Icon(Icons.north_east_outlined,
                                  size: 16, color: kwhite),
                            ),
                            kwidth5,
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
                        child: SvgPicture.asset('assets/images/github.svg')),
                    kwidth15,
                    GestureDetector(
                        onTap: () {
                          _launchURL("https://github.com/SachinMall");
                        },
                        child: SvgPicture.asset('assets/images/link.svg')),
                  ],
                ),
                height50,
                ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.asset('assets/images/profile_pic.png',
                      fit: BoxFit.cover,
                      height: screenHeight * 0.75,
                      width: screenWidth),
                ),
                height30,
                const Divider(
                  color: Color(0xff484848),
                ),
                const ProjectMobile(),
                const Divider(
                  color: Color(0xff484848),
                ),
                const AboutMeMobile(),
                const Divider(
                  color: Color(0xff484848),
                ),
                height15,
                const ConnectMobile()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
