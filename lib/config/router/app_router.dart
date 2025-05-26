import 'package:go_router/go_router.dart';
import 'package:widgets_app/presentation/screens/screens.dart';

final appRouter = GoRouter(
      initialLocation: '/',
      routes:[
        
        GoRoute(path: '/',name: HomeScreen.nameRoute,builder: (context, state) => const HomeScreen(),), 
        GoRoute(path: '/buttons',name:  ButtonsScreens.nameRoute,builder: (context, state) => const ButtonsScreens(),), 
        GoRoute(path: '/Card',name: CardsScreens.nameRoute ,builder: (context, state) => const CardsScreens(),) ,
        GoRoute(path: '/progres',name: ProgressScreen.nameRoute ,builder: (context, state) => const ProgressScreen(),) ,
        GoRoute(path: '/snack',name: SnackBarScreen.nameRoute ,builder: (context, state) => const SnackBarScreen(),) ,
        GoRoute(path: '/animations',name: AnimatedScreen.nameRoute ,builder: (context, state) => const AnimatedScreen(),) ,
        GoRoute(path: '/ui_control',name: UiScreen.nameRoute ,builder: (context, state) => const UiScreen(),) 
        
        ]
);