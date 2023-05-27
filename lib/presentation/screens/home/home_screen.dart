import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:trazabilidad/config/menu/menu_items.dart';

class HomeScreen extends StatelessWidget {
  static const String name = 'home_screen';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
        key: scaffoldKey,
        appBar: AppBar(
          title: const Text('Trazabilidad'),
        ),
        body: const _HomeView());
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      //appMenuItems es una lista de objetos MenuItem
      itemCount: appMenuItems.length,
      itemBuilder: (context, index) {
        final menuItem = appMenuItems[index];
        return _CutomList(
          menuItem: menuItem,
        );
      },
    );
  }
}

class _CutomList extends StatelessWidget {
  final MenuItem menuItem;
  const _CutomList({
    required this.menuItem,
  });

  @override
  Widget build(BuildContext context) {
    //el color es el color de fondo del ListTile que viene del tema
    final colors = Theme.of(context).colorScheme;
    return ListTile(
      //el leading es el icono que va al inicio
      leading: Icon(menuItem.icon),
      //el trailing es el icono que va al final
      trailing: Icon(
        Icons.arrow_forward_ios_outlined,
        color: colors.primary,
      ),
      title: Text(menuItem.title),
      subtitle: Text(menuItem.subTitle),
      onTap: () {
        context.push(menuItem.link);
      },
    );
  }
}
