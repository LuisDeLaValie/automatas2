import 'package:automatas2/ui/page/Chomsky/chomsky_page.dart';
import 'package:automatas2/ui/page/arbol/arbil_page.dart';
import 'package:automatas2/ui/page/gbl/gbl_page.dart';
import 'package:automatas2/ui/page/inicio/inicio_page.dart';
import 'package:automatas2/ui/page/sobre_gramatica/gramatica_page.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

import 'navegacion_servies.dart';

class Flurorouter {
  static final FluroRouter router = FluroRouter();

  static void configureRouter() {
    // home
    router.define(homeRouter,
        handler: Handler(handlerFunc: (context, params) => const InicioPage()),
        transitionType: TransitionType.none);
    router.define(gramaticaRouter,
        handler: Handler(handlerFunc: (context, params) => GramaticaPage()),
        transitionType: TransitionType.inFromBottom);
    router.define(gblRouter,
        handler: Handler(handlerFunc: (context, params) =>  GblPage()),
        transitionType: TransitionType.inFromBottom);
    router.define(arbolRouter,
        handler: Handler(handlerFunc: (context, params) =>  const ArbilPage()),
        transitionType: TransitionType.inFromBottom);
    router.define(chumkyRouter,
        handler: Handler(handlerFunc: (context, params) =>  const ChomskyPage()),
        transitionType: TransitionType.inFromBottom);

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
