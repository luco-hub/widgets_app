
import 'package:flutter/material.dart';

class MenuItems {

  final String title;
  final String subTitle;
  final String link;
  final IconData;

  const MenuItems(
    {
    required this.title, 
    required this.subTitle, 
    required this.link, 
    required this.IconData});


}

const appMenuItems = <MenuItems>[
MenuItems(title: 'Botones',subTitle: 'varios botones flutter',link: '/buttons',IconData: Icons.smart_button_outlined),
MenuItems(title: 'Tarjetas',subTitle: 'un contenedor estilizado',link: '/Card',IconData: Icons.credit_card)

];