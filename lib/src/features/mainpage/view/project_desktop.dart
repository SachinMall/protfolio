import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:protfolio/src/utils/const.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectDesktop extends StatefulWidget {
  const ProjectDesktop({super.key});

  @override
  State<ProjectDesktop> createState() => _ProjectDesktopState();
}

class _ProjectDesktopState extends State<ProjectDesktop> {
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'FEATURED PROJECTS',
            style: TextStyle(
                fontSize: 76,
                fontFamily: 'Bebas Neue',
                fontWeight: FontWeight.w400,
                color: kwhite),
          ),
          const Text(
            'Here are some of the selected projects that showcase my passion for\nfront-end development.',
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                fontFamily: 'Manrope',
                color: neutraloff),
          ),
          height30,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: screenHeight * 0.7,
                width: screenWidth * 0.4,
                // margin: const EdgeInsets.all(16),
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: const Color(0xff1A1A1A),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: Image.asset('assets/images/ads.png', scale: 3.1)),
              ),
              kwidth30,
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Ads Impact: Revolutionizing digital ads for social media.",
                      maxLines: 4,
                      style: TextStyle(
                          fontFamily: 'Manrope',
                          fontWeight: FontWeight.w500,
                          fontSize: 32,
                          color: kwhite),
                    ),
                    height10,
                    const Text(
                      "Elevate your digital advertising with Ads Impact – an all-in-one solution revolutionizing ad campaign creation, management, and optimization across social media platforms. Empower yourself with a potent toolkit to reach your target audience, maximize ROI, and drive exceptional results for your business.",
                      style: TextStyle(
                          fontFamily: 'Manrope',
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: neutraloff),
                    ),
                    height30,
                    const Text(
                      'PROJECT INFO',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Manrope',
                          color: kwhite),
                    ),
                    height10,
                    const Divider(
                      color: Color(0xff484848),
                    ),
                    height10,
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Month & Year',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Manrope',
                              color: kwhite),
                        ),
                        Text(
                          'February 2023',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Manrope',
                              color: neutraloff),
                        ),
                      ],
                    ),
                    height10,
                    const Divider(
                      color: Color(0xff484848),
                    ),
                    height10,
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Role',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Manrope',
                              color: kwhite),
                        ),
                        Spacer(),
                        Text(
                          'Front-end Developer',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Manrope',
                              color: neutraloff),
                        ),
                        height10,
                        Divider(
                          color: Color(0xff484848),
                        ),
                      ],
                    ),
                    height30,
                    GestureDetector(
                      onTap: () {
                        _launchURL(
                            'https://drive.google.com/uc?export=download&id=1vECRQMDHpANyuMosX5aEl2U5M4dgGi-2');
                      },
                      child: const Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'LIVE DEMO',
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Manrope',
                                fontWeight: FontWeight.w700,
                                color: Color(0xffD3E97A)),
                          ),
                          kwidth5,
                          Icon(Icons.north_east_outlined,
                              color: Color(0xffD3E97A), size: 16),
                        ],
                      ),
                    ),
                    Container(
                      height: 1,
                      width: screenWidth * 0.07,
                      color: const Color(0xffD3E97A),
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
