

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

final themeProvider = StateProvider((ref) => false);

final colorProvider = Provider((ref) => colorList);

final colorIndexProvider = StateProvider((ref) => 0);

final themeNotifireProvider = StateNotifierProvider<ThemeNotifire,AppTheme>(
  (ref) =>ThemeNotifire());



class ThemeNotifire extends StateNotifier<AppTheme> {

  ThemeNotifire(): super (AppTheme());



  void toggleDarkMode(){
    state = state.copyWith( isDarkMode: !state.isDarkMode);
  }
  
  
  void changeColorIndex( int colorIndex){

    state = state.copyWith(selecteColor: colorIndex);

  }
}