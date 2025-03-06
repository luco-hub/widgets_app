
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
MenuItems(title: 'Tarjetas',subTitle: 'un contenedor estilizado',link: '/Card',icono: Icons.credit_card)

];