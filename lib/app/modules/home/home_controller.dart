import 'package:flutter_modular_sample/app/models/pokemon_model.dart';
import 'package:mobx/mobx.dart';

import 'repositories/poke_repository.dart';
part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  final PokemonRepository repository;

  @observable
  ObservableFuture<List<PokemonModel>> pokemons;

  _HomeControllerBase(this.repository) {
    pokemons = repository.getAllPokemons().asObservable();
  }
}
