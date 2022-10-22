import 'package:flutter/material.dart';

class ContactLabelWidget extends StatelessWidget {
  final String text;
  final double? fontSize;
  final Color? color;
  final String? fontFamily;
  final FontWeight fontWeight;
  final double letterSpacing;

  const ContactLabelWidget(
      {required this.text,
      this.fontSize,
      this.color,
      this.fontFamily = 'SourceSansPro',
      this.fontWeight = FontWeight.bold,
      this.letterSpacing = 0,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        color: color,
        fontFamily: fontFamily,
        fontWeight: fontWeight,
        letterSpacing: letterSpacing,
      ),
    );
  }
}
