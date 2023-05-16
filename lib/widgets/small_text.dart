import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/constant_colors.dart';

class SmallText extends StatelessWidget {
  final String text;
  Color? color;
  double size;

  SmallText({
    required this.text,
    this.color = const Color(0xff9a9897),
    this.size = 12,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.roboto(
          textStyle: Theme.of(context).textTheme.subtitle1,
          fontSize: size,
          fontWeight: FontWeight.w300,
          color: color
      ),
    );
  }
}
