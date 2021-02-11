import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'home_controller.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final homeController = Modular.get<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Observer(
        builder: (_) {
          if (homeController.pokemons.error != null) {
            return Center(child: Text('An Error Has Occured'));
          }

          if (homeController.pokemons.value == null) {
            return Center(child: CircularProgressIndicator());
          }

          var pokemons = homeController.pokemons.value;

          return ListView.builder(
            itemCount: pokemons.length,
            itemBuilder: (context, index) => ListTile(
              title: Text(pokemons[index].name),
              subtitle: Text(pokemons[index].url),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // if (homeController.text.isEmpty) homeController.text = 'nada foi digitado';
          // Navigator.of(context).pushNamed('/other/${homeController.text}');
          Modular.to.pushNamed('/other');
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
