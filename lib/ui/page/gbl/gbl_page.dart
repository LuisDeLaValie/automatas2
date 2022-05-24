import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:google_fonts/google_fonts.dart';

class GblPage extends StatelessWidget {
  GblPage({Key? key}) : super(key: key);

  String datos = '''

## Gramática libre contexto ( GLC)

Estas gramáticas, conocidas también como gramáticas de tipo 2 o gramáticas independientes del contexto, son las que generan los lenguajes libres o independientes del contexto. Los lenguajes libres del contexto son aquellos que pueden ser reconocidos por un autómata de pila determinístico o no determinístico.

Como toda gramática se definen mediante una cuadrupla G = (N, T, P, S), siendo - N es un conjunto finito de símbolos no terminales

- T es un conjunto finito de símbolos terminales N ∩ T = ∅
- P es un conjunto finito de producciones
- S es el símbolo distinguido o axioma S ∉ (N ∪ T)

En una gramática libre del contexto, cada producción de P tiene la forma
''';

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        appBar:
            AppBar(title: const Text('Gramáticas Libres de Contexto (GLC)')),
        body: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: size.width * 0.2, vertical: 10),
          child: Markdown(
            styleSheetTheme: MarkdownStyleSheetBaseTheme.material,
            data: datos,
            selectable: true,
          ),
        )
        //  SingleChildScrollView(
        //   child: Column(
        //     children: <Widget>[
        //       Padding(
        //         padding: EdgeInsets.symmetric(
        //             horizontal: size.width * 0.1, vertical: 10),
        //         child: Text(
        //           datos[0],
        //           textAlign: TextAlign.justify,
        //           style: GoogleFonts.playfairDisplay(fontSize: 18),
        //         ),
        //       ),
        //       Padding(
        //         padding: EdgeInsets.symmetric(
        //             horizontal: size.width * 0.1, vertical: 10),
        //         child: Text(
        //           datos[1],
        //           textAlign: TextAlign.justify,
        //           style: GoogleFonts.playfairDisplay(fontSize: 18),
        //         ),
        //       ),
        //     ],
        //   ),
        // ),

        );
  }
}
