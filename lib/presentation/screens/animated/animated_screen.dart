import 'dart:math' show Random;
import 'package:flutter/material.dart';

class AnimatedScreen extends StatefulWidget {


  static const String nameRoute = 'animate_screen';

  const AnimatedScreen({super.key});

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {

  double width = 50;
  double height = 50;
  Color color = Colors.orange;
  double border = 10.0;

  void changeShape(){

    final random = Random();
    width = random.nextInt(300)+50;
    height = random.nextInt(800)+50;
  
    border = random.nextInt(100) + 5.0;

    color =Color.fromRGBO(
      random.nextInt(28),
      random.nextInt(255),
      random.nextInt(255),
      1
    );
    setState(() {});
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Container'),
        
      ),

      body: Center(

        child: AnimatedContainer(
          duration: const Duration( milliseconds: 400),
          curve: Curves.easeInOutCubic,
          height: height,
          width: width ,
          decoration: BoxDecoration(
            color: color,  
            borderRadius: BorderRadius.circular(border)
          ),

        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: changeShape,
        child: const Icon(Icons.play_arrow)),
    );
  }
}