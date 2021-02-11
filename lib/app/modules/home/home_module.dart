import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_sample/app/modules/home/home_controller.dart';
import 'package:flutter_modular_sample/app/modules/home/home_page.dart';
import 'package:flutter_modular_sample/app/modules/home/repositories/poke_repository.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => HomeController(i.get<PokemonRepository>())),
        Bind((i) => PokemonRepository(i.get<Dio>())),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter('/', child: (_, args) => HomePage()),
      ];
}
