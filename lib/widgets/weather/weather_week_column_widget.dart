import 'package:flutter/material.dart';

import '../../constants/colors_constant.dart';

class WeatherWeekColumn extends StatelessWidget {
  final String title;
  final String date;
  final String iconPath;
  final String celsiusDegree;
  final int bottomValue;
  final bool isToday;

  const WeatherWeekColumn(
    this.title,
    this.date,
    this.iconPath,
    this.celsiusDegree,
    this.bottomValue, {
    Key? key,
    this.isToday = false,
  }) : super(key: key);

  Color chooseBottomValueContainerColor(int value) {
    if (bottomValue > 150) {
      return const Color(yellow);
    } else if (bottomValue > 80) {
      return const Color(neonGreen);
    } else {
      return const Color(paleRed);
    }
  }

  Color setTextColor([bool aDateValue = false]) {
    if (isToday) {
      return Colors.white;
    } else if (!isToday && !aDateValue) {
      return Colors.black;
    } else {
      return Colors.grey;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Text(
            title,
            style: TextStyle(
              color: setTextColor(),
            ),
          ),
          Text(
            date,
            style: TextStyle(
              color: setTextColor(true),
              fontSize: 12,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Image.asset(
              iconPath,
              scale: 5,
            ),
          ),
          Text(
            celsiusDegree,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: setTextColor(),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10),
            padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 7),
            decoration: BoxDecoration(
              color: chooseBottomValueContainerColor(bottomValue),
              borderRadius: const BorderRadius.all(
                Radius.circular(5),
              ),
            ),
            child: Text(
              bottomValue.toString(),
              style: const TextStyle(
                color: Colors.white,
                fontSize: 10,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
