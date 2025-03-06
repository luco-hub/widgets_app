import 'package:go_router/go_router.dart';
import 'package:widgets_app/presentation/screens/screens.dart';

final appRouter = GoRouter(
      initialLocation: '/',
      routes:[
        
        GoRoute(path: '/',name: HomeScreen.nameRoute,builder: (context, state) => const HomeScreen(),), 
        GoRoute(path: '/buttons',name:  ButtonsScreens.nameRoute,builder: (context, state) => const ButtonsScreens(),), 
        GoRoute(path: '/Card',name: CardsScreens.nameRoute ,builder: (context, state) => const CardsScreens(),) 
        
        ]
);