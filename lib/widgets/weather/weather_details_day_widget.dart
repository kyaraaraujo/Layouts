import 'package:flutter/material.dart';

class WeatherDetailsDay extends StatelessWidget {
  final String imagePath;
  final String text;
  final String value;

  const WeatherDetailsDay(this.imagePath, this.text, this.value, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          imagePath,
          width: 20,
        ),
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 11,
            ),
          ),
        ),
        Text(
          value,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
