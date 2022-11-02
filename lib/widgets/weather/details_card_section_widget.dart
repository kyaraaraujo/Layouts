import 'package:flutter/material.dart';

import '../../constants/assets_paths_constant.dart';
import 'weather_details_day_widget.dart';

class DetailsCardSectionWidget extends StatelessWidget {
  const DetailsCardSectionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const String iconsPath = imageBasePath + weatherDir + iconsDir;

    const Map<String, List<WeatherDetailsDay>> rows = {
      'first': [
        WeatherDetailsDay('${iconsPath}Wind.png', 'WIND', '9km/h'),
        WeatherDetailsDay('${iconsPath}Drop.png', 'HUMIDITY', '0.9'),
        WeatherDetailsDay('${iconsPath}CloudRain.png', 'RAINFALL', '30%'),
      ],
      'second': [
        WeatherDetailsDay('${iconsPath}SunHorizon.png', 'UV INDEX', '3'),
        WeatherDetailsDay('${iconsPath}Thermometer.png', 'FEELS LIKE', '26.5'),
        WeatherDetailsDay('${iconsPath}SunHorizon.png', 'AIR QUALITY', '50'),
      ]
    };

    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 18, vertical: 9),
      elevation: 15,
      color: Colors.white,
      shadowColor: Colors.black,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Text(
                  "Details",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 150),
                Icon(
                  Icons.refresh,
                  color: Colors.grey,
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [...?rows['first']],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 17),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [...?rows['second']],
            ),
          ),
        ],
      ),
    );
  }
}
