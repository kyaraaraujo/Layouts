import 'package:flutter/material.dart';

class WeatherPage extends StatelessWidget {
  const WeatherPage({Key? key}) : super(key: key);

  Column buildWeatherDayDetailsColumn(
      String imagePath, String text, String value) {
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

  @override
  Widget build(BuildContext context) {
    const String imageBasePath = "assets/images/weather/";
    Padding menuSection = Padding(
      padding: const EdgeInsets.all(18.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 30,
            height: 30,
            color: Colors.grey,
          ),
          Container(
            width: 30,
            height: 30,
            color: Colors.grey,
          ),
        ],
      ),
    );

    Card dayCardSection = Card(
      margin: const EdgeInsets.symmetric(horizontal: 18, vertical: 9),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      shadowColor: Colors.black,
      elevation: 20,
      color: Colors.blue,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              //FIXME imagem transborda card, usar stack?
              Image.asset(
                '${imageBasePath}cloudy.png',
                width: 130,
              ),
              //FIXME texto tem uma opacidade gradiente, buscar como fazer
              const Text(
                '27°',
                style: TextStyle(
                  fontSize: 70,
                  fontWeight: FontWeight.bold,
                  color: Colors.white, //FIXME cor tem gradiante
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: const [
                  Text(
                    'texto 1',
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    'texto 2, 10/22',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
              Image.asset('${imageBasePath}wind.png', width: 100),
            ],
          ),
        ],
      ),
    );

    Card detailsCardSection = Card(
      margin: const EdgeInsets.symmetric(horizontal: 18, vertical: 9),
      elevation: 20,
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
            children: [
              buildWeatherDayDetailsColumn(
                '${imageBasePath}icons/Wind.png',
                'WIND',
                '9km/h',
              ),
              buildWeatherDayDetailsColumn(
                '${imageBasePath}icons/Drop.png',
                'HUMIDITY',
                '0.9',
              ),
              buildWeatherDayDetailsColumn(
                '${imageBasePath}icons/CloudRain.png',
                'RAINFALL',
                '30%',
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                buildWeatherDayDetailsColumn(
                  '${imageBasePath}icons/SunHorizon.png',
                  'UV INDEX',
                  '3',
                ),
                buildWeatherDayDetailsColumn(
                    '${imageBasePath}icons/Thermometer.png',
                    'FEELS LIKE',
                    '26.5'),
                buildWeatherDayDetailsColumn(
                    '${imageBasePath}icons/SunHorizon.png',
                    'AIR QUALITY',
                    '50'),
              ],
            ),
          ),
        ],
      ),
    );

    //TODO daysWeaterSection

    return Scaffold(
      backgroundColor: Colors.lightBlue[50],
      appBar: AppBar(
        title: const Text(('Weather Page')),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          menuSection,
          dayCardSection,
          detailsCardSection,
        ],
      ),
    );
  }
}
