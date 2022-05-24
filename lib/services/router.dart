import 'package:automatas2/ui/page/inicio/inicio_page.dart';
import 'package:automatas2/ui/page/sobre_gramatica/gramatica_page.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

import 'navegacion_servies.dart';

class Flurorouter {
  static final FluroRouter router = FluroRouter();

  static void configureRouter() {
    // home
    router.define(homeRouter, handler: Handler(handlerFunc: (context, params) {
      return const InicioPage();
    }), transitionType: TransitionType.none);
    router.define(gramaticaRouter, handler: Handler(handlerFunc: (context, params) {
      return  GramaticaPage();
    }), transitionType: TransitionType.inFromBottom);
   
    router.notFoundHandler = _notfount;
  }

  static final Handler _notfount = Handler(handlerFunc: (context, params) {
    return const Scaffold(
      body: Center(
        child: Text("Not fount"),
      ),
    );
  });
}
