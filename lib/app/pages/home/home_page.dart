import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_sample/app/pages/home/home_controller.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _homeController = HomeController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: TextField(
            onChanged: (String value) => _homeController.text = value,
            decoration: InputDecoration(labelText: 'Um texto qualquer'),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (_homeController.text.isEmpty) _homeController.text = 'nada foi digitado';
          // Navigator.of(context).pushNamed('/other/${_homeController.text}');
          Modular.to.pushNamed('/other/${_homeController.text}');
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
