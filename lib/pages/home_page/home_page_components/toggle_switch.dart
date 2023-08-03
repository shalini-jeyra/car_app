
import 'package:flutter/cupertino.dart';

class ToggleSwitch extends StatelessWidget {
  final bool isYellowCar;
  final ValueChanged<bool> onToggle;

  const ToggleSwitch(this.isYellowCar, {super.key, required this.onToggle});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80,
      child: CupertinoSwitch(
        value: isYellowCar,
        onChanged: onToggle,
        activeColor: const Color.fromARGB(255, 213, 211, 211),
        trackColor: const Color.fromARGB(255, 213, 211, 211),
      ),
    );
  }
}