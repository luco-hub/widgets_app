import 'package:flutter/material.dart';

class CardsScreens extends StatelessWidget {

  static const String nameRoute = 'card_screen';
  const CardsScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cards Screen'),
      ) ,
      body: Container(),

    );
  }
}