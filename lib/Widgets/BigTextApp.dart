import 'package:flutter/material.dart';

class BigTextApp extends StatelessWidget {
  double size;
  final String text;
  TextOverflow overflow;
   Color? color;

  BigTextApp({
    Key? key,
    required this.text,
    this.size = 20,
     this.color=const Color(0xff332d2b),
    this.overflow = TextOverflow.ellipsis,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,
        maxLines: 1,
        style: TextStyle(
            color: color, fontSize: size,fontWeight: FontWeight.w400, fontFamily: 'Roboto'),
        overflow: overflow);
  }
}
