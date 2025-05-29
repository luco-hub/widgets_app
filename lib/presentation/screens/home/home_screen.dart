import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_app/config/menu/menu_items.dart';
import 'package:widgets_app/presentation/widgets/side_menu.dart';
class HomeScreen  extends StatelessWidget {


  static const String nameRoute = 'home_screen';

  const HomeScreen ({super.key});

  @override
  Widget build(BuildContext context) {

    final scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: const Text('Flutter / Widges...'),
      ),

      body: const _HomeBody(menuItems:appMenuItems,),
      drawer:  SideMenu(scaffoldKey: scaffoldKey,),

    );
  }
}

class _HomeBody extends StatelessWidget {

  final List<MenuItems> menuItems;

  const _HomeBody({required this.menuItems});

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