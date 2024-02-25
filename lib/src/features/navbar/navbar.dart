import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:protfolio/src/features/navbar/widgets/custom_textbutton.dart';
import 'package:protfolio/src/utils/const.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1280) {
          return const DesktopNavBar();
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1280) {
          return const DesktopNavBar();
        } else {
          return const MobileNavBar();
        }
      },
    );
  }
}

class DesktopNavBar extends StatelessWidget {
  const DesktopNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'SACHIN MALL',
            style: TextStyle(
              fontSize: 22,
              letterSpacing: 1,
              fontWeight: FontWeight.w400,
              fontFamily: 'Bebas Neue',
              color: neutraloff,
            ),
          ),
          Row(
            children: [
              CustomTextButton(
                onTap: () {},
                text: 'Work',
              ),
              CustomTextButton(
                onTap: () {},
                text: 'About',
              ),
              CustomTextButton(
                onTap: () {},
                text: 'Connect',
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class MobileNavBar extends StatefulWidget {
  const MobileNavBar({super.key});

  @override
  State<MobileNavBar> createState() => _MobileNavBarState();
}

class _MobileNavBarState extends State<MobileNavBar> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'SACHIN MALL',
            style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w400,
                letterSpacing: 1.5,
                fontFamily: 'Bebas Neue',
                color: neutraloff),
          ),
          Row(
            children: [
              Image.asset('assets/images/menu.png',
                  fit: BoxFit.contain, height: screenHeight * 0.05)
            ],
          ),
        ],
      ),
    );
  }
}
