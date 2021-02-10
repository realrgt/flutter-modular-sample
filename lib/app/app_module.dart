import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_sample/app/app_controller.dart';
import 'package:flutter_modular_sample/app/app_widget.dart';
import 'package:flutter_modular_sample/app/pages/home/home_controller.dart';
import 'package:flutter_modular_sample/app/pages/home/home_page.dart';
import 'package:flutter_modular_sample/app/pages/other/other_page.dart';
import 'package:flutter_modular_sample/app/rx/home_rx.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AppController()),
        Bind((i) => HomeController()),
        Bind((i) => HomeRx()),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter('/', child: (_, args) => HomePage()),
        ModularRouter('/other', child: (_, args) => OtherPage()),
      ];

  @override
  Widget get bootstrap => AppWidget();
}
