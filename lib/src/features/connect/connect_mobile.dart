import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:protfolio/src/utils/const.dart';
import 'package:url_launcher/url_launcher.dart';

class ConnectMobile extends StatefulWidget {
  const ConnectMobile({super.key});

  @override
  State<ConnectMobile> createState() => _ConnectMobileState();
}

class _ConnectMobileState extends State<ConnectMobile> {
  _launchPhoneCall(String phoneNumber) async {
    final Uri phoneLaunch = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    if (await canLaunch(phoneLaunch.toString())) {
      await launch(phoneLaunch.toString());
    } else {
      throw 'Could not launch $phoneLaunch';
    }
  }

  Future<void> _launchEmail(String email) async {
    final Uri emailLaunchUri = Uri(scheme: 'mailto', path: email);
    if (await canLaunch(emailLaunchUri.toString())) {
      await launch(emailLaunchUri.toString());
    } else {
      throw 'Could not launch email';
    }
  }

  Future<void> _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url, forceWebView: true, enableJavaScript: true);
    } else {
      throw "Can not launch url";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Phone',
          style: TextStyle(
              fontFamily: 'Manrope',
              fontWeight: FontWeight.w500,
              color: kwhite,
              fontSize: 16),
        ),
        height5,
        GestureDetector(
          onTap: () {
            _launchPhoneCall('+919623678461');
          },
          child: const Text(
            '+91 9623678461',
            style: TextStyle(
                fontFamily: 'Manrope',
                fontWeight: FontWeight.w600,
                color: Color(0xffD3E97A),
                fontSize: 16),
          ),
        ),
        height20,
        const Text(
          'Email',
          style: TextStyle(
              fontFamily: 'Manrope',
              fontWeight: FontWeight.w500,
              color: kwhite,
              fontSize: 16),
        ),
        height5,
        GestureDetector(
          onTap: () {
            _launchEmail('sachinvinodmall@gmail.com');
          },
          child: const Text(
            'sachinvinodmall@gmail.com',
            style: TextStyle(
                fontFamily: 'Manrope',
                fontWeight: FontWeight.w600,
                color: Color(0xffD3E97A),
                fontSize: 16),
          ),
        ),
        height20,
        const Text(
          'Connect On',
          style: TextStyle(
              fontFamily: 'Manrope',
              fontWeight: FontWeight.w500,
              color: kwhite,
              fontSize: 16),
        ),
        height5,
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
                onTap: () {
                  _launchURL(
                      "https://www.linkedin.com/in/sachin-mall-73638a259/");
                },
                child: SvgPicture.asset('assets/images/linkedin.svg')),
            kwidth20,
            GestureDetector(
                onTap: () {
                  _launchURL("https://github.com/SachinMall");
                },
                child: SvgPicture.asset('assets/images/git.svg')),
            kwidth20,
            GestureDetector(
                onTap: () {
                  _launchURL("https://wa.me/+919623678461");
                },
                child:
                    SvgPicture.asset('assets/images/whatsapp.svg', height: 32)),
            kwidth20,
            GestureDetector(
                onTap: () {
                  _launchURL("https://www.instagram.com/_.sachin20._/");
                },
                child: SvgPicture.asset('assets/images/instagram.svg')),
          ],
        ),
        height30,
      ],
    );
  }
}
