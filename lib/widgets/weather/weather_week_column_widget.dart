import 'package:flutter/material.dart';

class WeatherWeekColumn extends StatelessWidget {
  final String title;
  final String date;
  final String iconPath;
  final String celsiusDegree;
  final String bottomValue;

  const WeatherWeekColumn(
    this.title,
    this.date,
    this.iconPath,
    this.celsiusDegree,
    this.bottomValue, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Text(title),
          Text(
            date,
            style: const TextStyle(
              color: Colors.grey,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              iconPath,
              scale: 5,
            ),
          ),
          Text(
            celsiusDegree,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10),
            padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 7),
            decoration: BoxDecoration(
              color: Colors.yellow.shade600,
              borderRadius: const BorderRadius.all(
                Radius.circular(5),
              ),
            ),
            child: Text(
              bottomValue,
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
