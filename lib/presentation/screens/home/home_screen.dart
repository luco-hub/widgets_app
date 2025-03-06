import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_app/config/menu/menu_items.dart';
import 'package:widgets_app/config/router/app_router.dart';
import 'package:widgets_app/presentation/screens/buttons/buttons_screens.dart';

import '../../../config/menu/menu_items.dart';

class HomeScreen  extends StatelessWidget {
  const HomeScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter / Widges...'),
      ),

      body: const _HomeBody(menuItems:appMenuItems,),

    );
  }
}

class _HomeBody extends StatelessWidget {

  final List<MenuItems> menuItems;

  const _HomeBody({super.key, required this.menuItems});

  @override
  Widget build(BuildContext context) {
    final colorTheme = Theme.of(context).colorScheme;
    
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: menuItems.length,
      itemBuilder:(context, index) => ListTile( 
          title: Text(menuItems[index].title,),
          subtitle:Text(menuItems[index].subTitle),
          leading: Icon( menuItems[index].icono, color:colorTheme.primary,),
          trailing: Icon(Icons.arrow_forward_ios_rounded,color: colorTheme.primary,),
          onTap: () {
            context.push( menuItems[index].link);
          },

      ),
      
      );
  }
}