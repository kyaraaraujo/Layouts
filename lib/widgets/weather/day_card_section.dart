import 'package:flutter/material.dart';

import '../../constants/assets_paths_constant.dart';

class DayCardSectionWidget extends StatelessWidget {
  const DayCardSectionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const String weatherPath = imageBasePath + weatherDir;

    return Card(
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
              //FIXME imagem transborda card
              Image.asset(
                '${weatherPath}cloudy.png',
                width: 130,
              ),
              //FIXME texto tem uma opacidade gradiente
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
              Image.asset('${weatherPath}wind.png', width: 100),
            ],
          ),
        ],
      ),
    );
  }
}
