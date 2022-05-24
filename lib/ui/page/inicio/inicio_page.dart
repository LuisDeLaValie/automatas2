import 'package:flutter/material.dart';

import 'view/derivacion/derivacion_view.dart';
import 'view/glc/glc_view.dart';
import 'view/gramatica/gramatica_view.dart';

class InicioPage extends StatelessWidget {
  const InicioPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var tamano = MediaQuery.of(context).size;
    return Scaffold(
      body: ListView(
        children: [
          GramaticaView(tamano: tamano),
          GlcView(tamano: tamano),
          DerivacionView(tamano: tamano),
        ],
      ),
    );
  }
}
