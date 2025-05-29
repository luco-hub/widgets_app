import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/presentation/provider/counter_provider.dart';
import 'package:widgets_app/presentation/provider/theme_provider.dart';

class CounterScreen extends ConsumerWidget {
  static const String nameRoute = 'conuter';
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final int clickCounter = ref.watch(counterProvider);
    final bool isDark = ref.watch(themeProvider);
    return Scaffold(

            appBar: AppBar(
              title: const Text('Riverpod'),
              actions: [
                IconButton( icon:  Icon(isDark? Icons.dark_mode_outlined
                      :Icons.light_mode_outlined),
                      onPressed: () => ref.read(themeProvider.notifier).state = !isDark,
                )
              ],
              ),

              body:  Center( child: Text('Valor : $clickCounter',style: const TextStyle(fontSize: 40),),),

      floatingActionButton: FloatingActionButton(
        child: const Icon( Icons.add),
        onPressed: () {

          ref.read(counterProvider.notifier).state ++;
        
      },),

    );
  }
}