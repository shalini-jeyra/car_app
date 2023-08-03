
import 'package:flutter/material.dart';

class CircularSpeedContainer extends StatelessWidget {
  final int speed;

  const CircularSpeedContainer({super.key, required this.speed});

  @override
  Widget build(BuildContext context) {
    bool isOverSpeedLimit = speed > 100;

    return Container(
      width: 175,
      height: 175,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isOverSpeedLimit ? Colors.red : Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 10,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Center(
        child: Container(
          width: 150,
          height: 150,
          decoration:
              const BoxDecoration(shape: BoxShape.circle, color: Colors.white),
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                '$speed',
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                'km/h',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          )),
        ),
      ),
    );
  }
}
