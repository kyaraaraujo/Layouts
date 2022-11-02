import 'package:flutter/material.dart';

import '../../constants/assets_paths_constant.dart';
import '../../constants/colors_constant.dart';

class DayCardSectionWidget extends StatelessWidget {
  const DayCardSectionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const String weatherPath = imageBasePath + weatherDir;

    return Card(
      color: Colors.transparent,
      margin: const EdgeInsets.symmetric(horizontal: 18, vertical: 9),
      elevation: 20,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(lightGreen),
              Color(lightBlue),
            ],
          ),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                //FIXME image overflow
                Image.asset(
                  '${weatherPath}cloudy.png',
                  width: 130,
                ),
                Text(
                  '27°',
                  style: TextStyle(
                    fontSize: 70,
                    fontWeight: FontWeight.bold,
                    color: Colors.white.withOpacity(0.8), //FIXME gradient
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
                      'Cloudy',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 25,
                      ),
                    ),
                    Text(
                      'Saturday, 10/22',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                Image.asset('${weatherPath}wind.png', width: 100),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
