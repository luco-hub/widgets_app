
import 'package:flutter/material.dart';

class MenuItems {

  final String title;
  final String subTitle;
  final String link;
  final IconData icono;

  const MenuItems(
    {
    required this.title, 
    required this.subTitle, 
    required this.link, 
    required this.icono});


}

const appMenuItems = <MenuItems>[
MenuItems(title: 'Botones',subTitle: 'varios botones flutter',link: '/buttons',icono: Icons.smart_button_outlined),
MenuItems(title: 'Tarjetas',subTitle: 'un contenedor estilizado',link: '/Card',icono: Icons.credit_card),
MenuItems(title: 'Proges Indicator',subTitle: 'Generales y controlados',link: '/progres',icono: Icons.refresh_rounded),
MenuItems(title: 'Snack Bar y Dialogs',subTitle: 'Generales y controlados',link: '/snack',icono: Icons.ballot_rounded),
MenuItems(title: 'Animate Container',subTitle: 'Animations',link: '/animations',icono: Icons.check_box_outline_blank_rounded),
MenuItems(title: 'UI Controls',subTitle: 'Ui Ctrl',link: '/ui_control',icono: Icons.check_box_outlined),

];