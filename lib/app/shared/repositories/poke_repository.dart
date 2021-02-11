import 'package:dio/dio.dart';
import 'package:flutter_modular_sample/app/shared/models/pokemon_model.dart';

class PokemonRepository {
  final Dio dio;

  PokemonRepository(this.dio);

  Future<List<PokemonModel>> getAllPokemons() async {
    var response = await dio.get('/pokemon');

    List<PokemonModel> pokemons = List();

    for (var json in (response.data['results']) as List) {
      PokemonModel pokemon = PokemonModel(name: json['name'], url: json['url']);
      pokemons.add(pokemon);
    }

    return pokemons;
  }
}
