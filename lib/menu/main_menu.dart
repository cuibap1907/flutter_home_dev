import 'package:flutter/material.dart';

class MainMenuView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MenuView(),
    );
  }
}

class MenuView extends StatefulWidget {
  @override
  _MenuViewState createState() => _MenuViewState();
}

class _MenuViewState extends State<MenuView> {
  final List<IconData> topIcons = [
    Icons.search,
    Icons.add
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 2.0,
        title: Text("Home"),
        leading: IconButton(
          icon: Icon(Icons.menu, size: 30, color: Colors.red,),
          onPressed: () {},
        ),
        actions: List.generate(topIcons.length, (int index) {
          return IconButton(
            icon: Icon(topIcons[index], size: 30,),
            onPressed: () {},
          );
        }).toList(),    
      ),
    );
  }
}