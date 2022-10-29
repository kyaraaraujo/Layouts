import 'package:flutter/material.dart';

import '../../constants/assets_paths_constant.dart';
import 'weather_week_column_widget.dart';

class DaysWeatherSectionWidget extends StatelessWidget {
  const DaysWeatherSectionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const String weatherImage = imageBasePath + weatherDir;

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 18, vertical: 9),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          WeatherWeekColumn(
              'Tuesday', '11/01', '${weatherImage}rainy.png', '22°C', '193'),
          WeatherWeekColumn(
              'Wednesday', '11/02', '${weatherImage}rainy.png', '22°C', '193'),
          WeatherWeekColumn(
              'Thursday', '11/03', '${weatherImage}rainy.png', '27°C', '150'),
          WeatherWeekColumn(
              'Friday', '11/04', '${weatherImage}rainy.png', '28°C', '78'),
        ],
      ),
    );
  }
}
