
import 'dart:math';

import 'package:flutter/material.dart';

import 'home_page_components.dart';

class CarSpeedWidget extends StatefulWidget {
  const CarSpeedWidget({super.key});

  @override
  _CarSpeedWidgetState createState() => _CarSpeedWidgetState();
}

class _CarSpeedWidgetState extends State<CarSpeedWidget> {
  bool isYellowCar = false;
  int blueCarSpeed = 0;
  int yellowCarSpeed = 0;

  @override
  void initState() {
    super.initState();
    _generateRandomSpeeds();
  }

  void _generateRandomSpeeds() {
    final random = Random();
    blueCarSpeed = random.nextInt(101) + 50;
    yellowCarSpeed = random.nextInt(101) + 50;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Icon(
              Icons.directions_car_filled,
              size: 50,
              color: isYellowCar ? Colors.yellow : Colors.blue,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  '1',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                ToggleSwitch(
                  isYellowCar,
                  onToggle: (isYellow) {
                    setState(() {
                      isYellowCar = isYellow;
                      _generateRandomSpeeds();
                    });
                  },
                ),
                const Text(
                  '2',
                  style: TextStyle(
                    color: Colors.yellow,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
        Column(
          children: [
            CircularSpeedContainer(
                speed: isYellowCar ? yellowCarSpeed : blueCarSpeed),
            const SizedBox(
              height: 15,
            ),
            const Text(
              'Current speed',
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.normal,
              ),
            ),
          ],
        ),
        Container(
          height: 100,
          width: MediaQuery.of(context).size.width,
          color: isYellowCar ? Colors.yellow : Colors.blue,
        )
      ],
    );
  }
}