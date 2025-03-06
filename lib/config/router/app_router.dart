import 'package:go_router/go_router.dart';
import 'package:widgets_app/presentation/screens/screens.dart';

final appRouter = GoRouter(
      initialLocation: '/',
      routes:[
        
        GoRoute(path: '/',builder: (context, state) => const HomeScreen(),), 
        GoRoute(path: '/buttons',builder: (context, state) => const ButtonsScreens(),), 
        GoRoute(path: '/Card',builder: (context, state) => const CardsScreens(),) 
        
        ]
);