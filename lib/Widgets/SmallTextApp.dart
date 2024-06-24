import 'package:flutter/material.dart';

class SmallTextApp extends StatelessWidget {
  double size;
  final String text;
  Color? color;
  double hight;

  SmallTextApp({
    Key? key,
    required this.text,
    this.size = 12,
    this.hight = 1.2,
    this.color = const Color(0xffccc7c5),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: color,
          fontSize: size,
          height: hight,
          fontFamily: 'Roboto'),
    );
  }
}
