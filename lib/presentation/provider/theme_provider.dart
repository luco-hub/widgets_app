

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

final themeProvider = StateProvider((ref) => false);

final colorProvider = Provider((ref) => colorList);

final colorIndexProvider = StateProvider((ref) => 0);