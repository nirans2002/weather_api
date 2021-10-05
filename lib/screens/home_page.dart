import 'package:flutter/material.dart';
import 'package:weather/constants.dart';
import 'package:weather/screens/components/botton_card.dart';
import 'package:weather/screens/components/current_card.dart';
import 'package:weather/screens/components/location_card.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(DefaultPadding),
          child: Column(
            children: [
              // SizedBox(height: 32),
              Spacer(),
              LocationCard(),
              Spacer(),
              CurrentCard(),
              Spacer(),
              BottomCard(),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
