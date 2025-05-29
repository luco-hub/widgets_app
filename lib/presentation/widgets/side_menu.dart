import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_app/config/menu/menu_items.dart';
import 'package:widgets_app/config/router/app_router.dart';

class SideMenu extends StatefulWidget {

  final GlobalKey<ScaffoldState> scaffoldKey;
   const SideMenu({super.key, required this.scaffoldKey});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  int navDrawerIndex = 0;
  @override
  Widget build(BuildContext context) {
    return NavigationDrawer(
        selectedIndex: navDrawerIndex,
        onDestinationSelected:(value) {
          setState(() {
              navDrawerIndex = value;
            });
            final menuItem = appMenuItems[value];
            context.push(menuItem.link);
            widget.scaffoldKey.currentState?.closeDrawer();
        },
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(28, 16, 16, 10),
            child: Text('Menu'),
          ),
          ...appMenuItems
          .sublist(0, 3)
          .map((items) =>
              NavigationDrawerDestination(
                  icon: Icon(items.icono), label: Text(items.title))),
          const Padding(
            padding: EdgeInsets.fromLTRB(28, 16, 16, 10),
            child: Divider(),
          ),
          
          const Padding(
            padding: EdgeInsets.fromLTRB(28, 16, 16, 10),
            child: Text('Mas opciones'),
          ),

          ...appMenuItems
          .sublist(3)
          .map((items) =>
              NavigationDrawerDestination(
                  icon: Icon(items.icono), label: Text(items.title))),
          
        ]);
  }
}
