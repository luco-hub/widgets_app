import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreens extends StatelessWidget {

  static const String nameRoute = 'button_screen';
  const ButtonsScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttons Screen'),
      ) ,
      body:  _ButtonScreenBody(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_back_ios_new_outlined),
        onPressed: () => context.pop(),),

    );
  }
}

class _ButtonScreenBody extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
      
      child: Wrap(
        alignment: WrapAlignment.center,
        spacing: 10,
        children: [
            ElevatedButton(onPressed: () {}, child: const Text('Elevated Button')),
            const ElevatedButton(onPressed:null, child: Text('Disable')),
            ElevatedButton.icon(onPressed: () {}, label: const Text('Flutter Time'),icon: const Icon(Icons.alarm_add_outlined), ),
            FilledButton(onPressed: () {}, child: const Text('Fill Button')),
            FilledButton.icon(onPressed: () {}, label:const Text('Fill Icon'),icon: const Icon(Icons.add_a_photo),),

            OutlinedButton(onPressed: () {}, child: const Text('OutLine Button')),
            OutlinedButton.icon(onPressed: () {}, label: const Text('OutLine Icon'),icon: const Icon(Icons.add_circle_outline_outlined),),

            const CustomButton(),
           TextButton(onPressed: () {}, child: const Text('Text button')),
            TextButton.icon(onPressed: () {}, label: const Text('Text Icon'),icon: const Icon(Icons.access_time_filled_sharp),)
      
        ],
      ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Material(
        color: colors.primary,
        child: InkWell(
          onTap: () {},
          child: const Padding(
            padding:EdgeInsets.symmetric(horizontal: 20, vertical: 10,),
            child: Text('Hola Mundo',style: TextStyle(color: Colors.white),),      
             ),
        ),
      ),
    );
  }
}

