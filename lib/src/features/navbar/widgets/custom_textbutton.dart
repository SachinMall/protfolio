import 'package:flutter/material.dart';
import 'package:protfolio/src/utils/const.dart';

class CustomTextButton extends StatefulWidget {
  final void Function() onTap;
  final String text;
  const CustomTextButton({super.key, required this.onTap, required this.text});

  @override
  State<CustomTextButton> createState() => _CustomTextButtonState();
}

class _CustomTextButtonState extends State<CustomTextButton> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(
        widget.text,
        style: const TextStyle(
            fontWeight: FontWeight.w500,
            fontFamily: 'Inter',
            color: neutraloff,
            fontSize: 16),
      ),
    );
  }
}
