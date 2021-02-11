import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_sample/app/app_controller.dart';
import 'package:flutter_modular_sample/app/app_widget.dart';
import 'package:flutter_modular_sample/app/pages/home/home_controller.dart';
import 'package:flutter_modular_sample/app/pages/home/home_page.dart';
import 'package:flutter_modular_sample/app/rx/home_rx.dart';
import 'package:flutter_modular_sample/app/shared/repositories/poke_repository.dart';
import 'package:flutter_modular_sample/app/shared/utils/constants.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AppController()),
        Bind((i) => HomeController(i.get())),
        Bind((i) => HomeRx()),
        Bind((i) => PokemonRepository(i.get())),
        Bind((i) => Dio(BaseOptions(baseUrl: BASE_URL))),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter('/', child: (_, args) => HomePage()),
      ];

  @override
  Widget get bootstrap => AppWidget();
}
