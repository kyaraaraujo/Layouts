import 'package:flutter/material.dart';

import '../../constants/assets_paths_constant.dart';
import '../../constants/colors_constant.dart';
import 'weather_week_column_widget.dart';

class WeatherWeekSectionWidget extends StatelessWidget {
  const WeatherWeekSectionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const String weatherImage = imageBasePath + weatherDir;

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 18, vertical: 9),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const WeatherWeekColumn(
            'Yesterday',
            '11/01',
            '${weatherImage}rainy.png',
            '22°C',
            193,
          ),
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(30),
              gradient: const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(lightGreen),
                    Color(lightBlue),
                  ]),
              boxShadow: [
                BoxShadow(
                  color: Colors.lightBlue.withOpacity(0.4),
                  spreadRadius: 3,
                  blurRadius: 15,
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 5),
            child: const WeatherWeekColumn(
              'Today',
              '11/02',
              '${weatherImage}cloudy.png',
              '27°C',
              193,
              isToday: true,
            ),
          ),
          const WeatherWeekColumn(
            'Tomorrow',
            '11/03',
            '${weatherImage}cloudy-sunny.png',
            '27°C',
            150,
          ),
          const WeatherWeekColumn(
            'Monday',
            '11/04',
            '${weatherImage}rainy.png',
            '28°C',
            78,
          ),
        ],
      ),
    );
  }
}
