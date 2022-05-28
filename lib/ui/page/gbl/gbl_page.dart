import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:video_player/video_player.dart';

class GblPage extends StatelessWidget {
  GblPage({Key? key}) : super(key: key);

  String datos = '''

## Gramática libre contexto ( GLC)

Estas gramáticas, conocidas también como gramáticas de tipo 2 o gramáticas independientes del contexto, 
son las que generan los lenguajes libres o independientes del contexto. Los lenguajes libres del contexto 
son aquellos que pueden ser reconocidos por un autómata de pila determinístico o no determinístico.

Como toda gramática se definen mediante una cuadrupla G = (N, T, P, S), siendo 

- N es un conjunto finito de símbolos no terminales.
- T es un conjunto finito de símbolos terminales N ∩ T = ∅.
- P es un conjunto finito de producciones.
- S es el símbolo distinguido o axioma S ∉ (N ∪ T).

En una gramática libre del contexto, cada producción de P tiene la forma
''';

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height1 = size.width * 0.2;

    return Scaffold(
      appBar: AppBar(title: const Text('Gramáticas Libres de Contexto (GLC)')),
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
                        VideoPlayerController.asset("assets/video/purba.mov"),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
