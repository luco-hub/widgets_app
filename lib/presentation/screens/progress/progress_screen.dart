import 'package:flutter/material.dart';

class ProgressScreen extends StatelessWidget {


  static const String nameRoute = 'progress_screen';

  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: const Text('Progress Indicator'),
      ),

      body: const _ProgressView(),
    );
    }
    
  
  }

class _ProgressView extends StatelessWidget {
  const _ProgressView();

  @override
  Widget build(BuildContext context) {
    return  const Center(
      child: Column(
        children: [
          SizedBox(height: 30,),
          Text('Circular Progres Indicator'),
          SizedBox(height: 10,),
          CircularProgressIndicator(strokeWidth: 2,backgroundColor:Colors.black45,),
          SizedBox(height: 30,),
          Text('Circular Progres Indicator'),
          SizedBox(height: 10,),
          _ControllerProgressIndicator()

        ],
      ),
    );
  }
}

class _ControllerProgressIndicator extends StatelessWidget {
  const _ControllerProgressIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Stream.periodic( const Duration( milliseconds: 300),(value){
        return (value * 2) / 100;
      }).takeWhile((value) => value < 100 )  ,
      builder: (context, snapshot) {
          final progressValue = snapshot.data ?? 0;
        return  Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              CircularProgressIndicator(value:progressValue , strokeWidth: 2,backgroundColor:Colors.black45),
              const SizedBox(width: 30,),
              Expanded(child: LinearProgressIndicator(value: progressValue,))
            ],
          ),
          
          );
      }
    );
  }
}