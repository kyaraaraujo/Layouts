import 'package:flutter/material.dart';
import 'package:layouts/widgets/weather/details_card_section_widget.dart';

import '../constants/colors_constant.dart';
import '../widgets/weather/day_card_section.dart';
import '../widgets/weather/menu_section_widget.dart';
import '../widgets/weather/weather_week_section_widget.dart';

class WeatherPage extends StatelessWidget {
  const WeatherPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[50],
      appBar: AppBar(
        title: const Text(('Weather Page')),
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: RadialGradient(
          colors: [
            const Color(paleBlue),
            const Color(paleYellow).withOpacity(0.5),
            const Color(lightPaleBlue),
          ],
          radius: 0.8,
          center: const Alignment(-0.8, 0.1),
        )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            MenuSectionWidget(),
            DayCardSectionWidget(),
            DetailsCardSectionWidget(),
            WeatherWeekSectionWidget(),
          ],
        ),
      ),
    );
  }
}
