import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../provider/theme_provider.dart';

class ChangeThemeScreen extends ConsumerWidget {
  
  static const String nameRoute ="change_theme";
  
  const ChangeThemeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bool isDark = ref.watch(themeNotifireProvider).isDarkMode;
    return Scaffold(
        appBar: AppBar( title: const Text('Change Theme'),
            actions: [
              IconButton( icon:  Icon(isDark? Icons.dark_mode_outlined
                      :Icons.light_mode_outlined),
                      onPressed: () => ref.read(themeNotifireProvider.notifier).toggleDarkMode()
                )
            ],
        
        ),

        body: const _BodyChangeThemeScreen(),
    );
  }
}

class _BodyChangeThemeScreen extends ConsumerWidget {
  
  
  const _BodyChangeThemeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final List<Color> colors = ref.watch(colorProvider);
    final int colorIndex = ref.watch(themeNotifireProvider).selecteColor;
    return ListView.builder(

      itemCount: colors.length,  
      itemBuilder: (context, index) {
          final Color color = colors[index];

          return RadioListTile(
            
              title:  Text('Este color: ',style: TextStyle(color: color),),
              subtitle: Text('$color.value'),
              activeColor: color,
              value: index,
              groupValue: colorIndex,
              onChanged:(value) {
                  ref.read(themeNotifireProvider.notifier).changeColorIndex(index);
              },);            
      },
      );
  }
}