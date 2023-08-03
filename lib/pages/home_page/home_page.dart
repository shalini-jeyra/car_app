


import 'package:flutter/material.dart';

import 'home_page_components/home_page_components.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      
      body: SafeArea(
        child: Center(
          child: CarSpeedWidget(),
        ),
      ),
    );
  }
}