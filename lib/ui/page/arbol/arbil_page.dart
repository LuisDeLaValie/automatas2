import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:video_player/video_player.dart';

class ArbilPage extends StatelessWidget {
  const ArbilPage({Key? key}) : super(key: key);

  final String datos = """
# Árbol de derivación

Un árbol de derivación permite mostrar gráficamente cómo se puede derivar cualquier cadena de un lenguaje a partir del símbolo distinguido de una gramática que genera ese lenguaje.

Un árbol es un conjunto de puntos, llamados nodos, unidos por líneas, llamadas arcos. Un arco conecta dos nodos distintos. Para ser un árbol un conjunto de nodos y arcos debe satisfacer ciertas propiedades:

- hay un único nodo distinguido, llamado raíz (se dibuja en la parte superior) que no tiene
arcos incidentes.
- todo nodo c excepto el nodo raíz está conectado con un arco a otro nodo k, llamado el
padre de c (c es el hijo de k). El padre de un nodo, se dibuja por encima del nodo.
- todos los nodos están conectados al nodo raíz mediante un único camino.
- los nodos que no tienen hijos se denominan hojas, el resto de los nodos se denominan
nodos interiores.

El árbol de derivación tiene las siguientes propiedades:

- el nodo raíz está rotulado con el símbolo distinguido de la gramática;
- cada hoja corresponde a un símbolo terminal o un símbolo no terminal;
- cada nodo interior corresponde a un símbolo no terminal.

![arbol](assets/img/arbol2.png)

Para cada cadena del lenguaje generado por una gramática es posible construir (al menos) un árbol de derivación, en el cual cada hoja tiene como rótulo uno de los símbolos de la cadena.

""";
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height1 = size.width * 0.2;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Árboles de derivación'),
      ),
      body: Stack(
        children: [
          Positioned(
            right: height1,
            left: height1,
            top: 10,
            bottom: 10,
            child: Markdown(
              data: datos,
              selectable: true,
            ),
          ),
          Positioned(
              top: 10,
              right: 0,
              child: SizedBox(
                width: height1,
                height: height1,
                child: Chewie(
                  controller: ChewieController(
                    aspectRatio: 1.5,
                    maxScale: 1.5,
                    showOptions: false,
                    autoPlay: true,
                    videoPlayerController:
                        VideoPlayerController.asset("dataSource/gramatica.mp4",),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
