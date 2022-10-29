import 'package:flutter/material.dart';
import 'package:layouts/widgets/weather/details_card_section_widget.dart';

import '../widgets/weather/day_card_section.dart';
import '../widgets/weather/days_weather_section_widget.dart';
import '../widgets/weather/menu_section_widget.dart';

class WeatherPage extends StatelessWidget {
  const WeatherPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[50],
      appBar: AppBar(
        title: const Text(('Weather Page')),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          MenuSectionWidget(),
          DayCardSectionWidget(),
          DetailsCardSectionWidget(),
          DaysWeatherSectionWidget(),
        ],
      ),
    );
  }
}
