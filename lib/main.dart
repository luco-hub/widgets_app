import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/router/app_router.dart';
import 'package:widgets_app/config/theme/app_theme.dart';
import 'package:widgets_app/presentation/provider/theme_provider.dart';

void main() {

  runApp(
    const ProviderScope(child: MainApp())
    );
}

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final int colorIndex = ref.watch(colorIndexProvider);
    final bool isDarkMode = ref.watch(themeProvider);

    return  MaterialApp.router(
      title: 'Widgets App',
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selecteColor: colorIndex,isDarkMode: isDarkMode).getTheme(),
    );
  }
}
