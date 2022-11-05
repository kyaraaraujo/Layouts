import 'package:flutter/material.dart';

import '../../constants/assets_paths_constant.dart';
import '../../constants/colors_constant.dart';

class DayCardSectionWidget extends StatelessWidget {
  const DayCardSectionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const String weatherPath = imageBasePath + weatherDir;

    return Stack(
      clipBehavior: Clip.none,
      children: [
        Card(
          color: Colors.transparent,
          shadowColor: Colors.grey.shade200.withOpacity(0.8),
          margin: const EdgeInsets.symmetric(horizontal: 18, vertical: 9),
          elevation: 20,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(35),
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
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 15.0, right: 40),
                      child: Text(
                        '27°',
                        style: TextStyle(
                          fontSize: 70,
                          fontWeight: FontWeight.bold,
                          color: Colors.white.withOpacity(0.8), //FIXME gradient
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(bottom: 10.0),
                          child: Text(
                            'Cloudy',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 25,
                            ),
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
                    Image.asset(
                      '${weatherPath}wind.png',
                      scale: 2.8,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: -50,
          left: 55,
          child: Image.asset(
            '${weatherPath}cloudy.png',
            scale: 2.7,
          ),
        ),
      ],
    );
  }
}
