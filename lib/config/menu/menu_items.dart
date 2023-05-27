import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItem({
    required this.title,
    required this.subTitle,
    required this.link,
    required this.icon,
  });
}

const appMenuItems = <MenuItem>[
  MenuItem(
      title: 'Escanea el codigo QR',
      subTitle: 'Escanear codigo QR',
      link: '/qr-code',
      icon: Icons.qr_code_scanner),
  MenuItem(
      title: 'Cambiar tema ',
      subTitle: 'Cambia el tema de la app',
      link: '/theme-changer',
      icon: Icons.palette),
];
