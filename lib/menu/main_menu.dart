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
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  final List<IconData> topIcons = [
    Icons.search,
    Icons.add
  ];

  void _topIconTapped(int index, BuildContext context)
  {
    SnackBar mySnackbar = SnackBar(
      backgroundColor: Colors.yellow,
      duration: Duration(milliseconds: 500),
      content: Text(index == 1?"Add":"Search",
      style: TextStyle(color: Colors.black, fontSize: 25),
      ),
    );

    _scaffoldKey.currentState.showSnackBar(mySnackbar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        titleSpacing: 2.0,
        title: Text("Home"),
        leading: IconButton(
          icon: Icon(Icons.menu, size: 30, color: Colors.white,),
          onPressed: () {},
        ),
        actions: List.generate(topIcons.length, (int index) {
          return IconButton(
            icon: Icon(topIcons[index], size: 30,),
            onPressed: () => _topIconTapped(index, context),
          );
        }).toList(),    
      ),
    );
  }
}