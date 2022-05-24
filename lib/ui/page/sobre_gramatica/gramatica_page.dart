import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: must_be_immutable
class GramaticaPage extends StatelessWidget {
  GramaticaPage({Key? key}) : super(key: key);

  Map<int, String> datos = {
    0: """
Una gramática es una cuádrupla :

G = ( VT , VN , S , P )

donde :

VT = { conjunto finito de símbolos terminales }

VN = { conjunto finito de símbolos no terminales }

S es el símbolo inicial y pertenece a VN.

P = { conjunto de producciones o de reglas de derivación }

Todas las cadenas del lenguaje definido por la gramática están formados con símbolos del vocabulario terminal VT. El vocabulario terminal se define por enumeración de los símbolos terminales.


El vocabulario no terminal VN es el conjunto de símbolos introducidos como ele- mentos auxiliares para la definición de la gramática, y que no figuran en las sentencias del lenguaje. El vocabulario no terminal se define por enumeración de los símbolos no terminales.

La intersección entre el vocabulario terminal y no terminal es el conjunto vacio : 
{ VN } ∩ { VT } = { ∅ }

La unión entre el vocabulario terminal y no terminal es el vocabulario : 
{ VN } ∪ { VT } = { V }

En ocasiones es importante distinguir si un determinado vocabulario incluye o no la cadena vacia, indicándose respectivamente con superíndice + o superíndice *, tal como se muestra a continuación :

V+ = V − { λ } 
V* = V + { λ }

El símbolo inicial S es un símbolo no terminal a partir del cual se aplican las reglas de la gramática para obtener las distintas cadenas del lenguaje.

Las producciones P son las reglas que se aplican desde el símbolo inicial para obtener las cadenas del lenguaje. El conjunto de producciones P se define por medio de la enu- meración de las distintas producciones, en forma de reglas o por medio de un metalenguaje por ejemplo BNF (Backus Naur Form) o EBNF (Extended Backus Naur Form).

""",
    1: '''
“x puede ser sustituido por y si x está, ya sea, en los símbolos No Terminales o los símbolos Terminales, sin incluir la cadena vacía e y está en los símbolos No Terminales o Terminales, incluyendo la cadena vacía.”

Los lenguajes generados por este tipo de gramáticas se llaman "lenguajes sin restricciones"

Nota: "+" significa "sin incluir la cadena vacía" y "*" significa "incluyendo la cadena vacía". "/" significa "o"

Estos lenguajes también son denominados "recursivamente enumerables" 
''',
    2: '''
“α puede ser reemplazado por β si la longitud de α es menor o igual a la longitud de β, siendo α un símbolo Terminal o una cadena vacía z1, seguido de un símbolo No Terminal X, seguido de otro símbolo Terminal o una cadena vacía z2. En el caso de β, z1 debe ser el mismo símbolo z1 de α seguido de un símbolo No Terminal o Terminal sin ser la cadena vacía, seguido del símbolo z2.” 
''',
    3: '''
“x puede ser reemplazado por y si x pertenece a los símbolos No Terminales e y es un Terminal o No Terminal, incluyendo la cadena vacía.” 
''',
    4: '''
También llamada "De contexto regular"

“α puede ser reemplazado por β si α pertenece a los símbolos No Terminales y β es uno de estos 3:

    Un símbolo Terminal no nulo seguido de un No Terminal.
    Un símbolo No Terminal seguido de un símbolo Terminal no nulo.
    Un símbolo Terminal pudiendo ser la cadena vacía.”
'''
  };

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(title: const Text("Gramatica")),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Gramatica",
                  style: Theme.of(context).textTheme.headline4,
                ),
                TextButton(
                  onPressed: () {
                    launchUrl(
                        Uri.parse(
                            "https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=&cad=rja&uact=8&ved=2ahUKEwi8-caY2fb3AhUtJkQIHcjcC1oQFnoECAMQAQ&url=https%3A%2F%2Freflection.uniovi.es%2Fortin%2Fpublications%2Fautomata.pdf&usg=AOvVaw0lPbGXvw5pazNpqL84l4kg"),
                        mode: LaunchMode.externalApplication);
                  },
                  child: const Text(
                    "Funete",
                    style: TextStyle(fontSize: 26),
                  ),
                ),
              ],
            ),
            const Divider(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
              child: Text(
                datos[0] ?? "",
                textAlign: TextAlign.center,
                style: GoogleFonts.playfairDisplay(fontSize: 20),
              ),
            ),
            const SizedBox(height: 30),
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Tipo 0 o "No restringida o recursivamente enumerables"',
                  style: Theme.of(context).textTheme.headline4,
                ),
                TextButton(
                  onPressed: () {
                    launchUrl(
                        Uri.parse(
                            "https://es.wikipedia.org/wiki/Gram%C3%A1tica_(aut%C3%B3mata)"),
                        mode: LaunchMode.externalApplication);
                  },
                  child: const Text(
                    "Funete",
                    style: TextStyle(fontSize: 26),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
              child: Text(
                datos[1] ?? "",
                textAlign: TextAlign.justify,
                style: GoogleFonts.playfairDisplay(fontSize: 18),
              ),
            ),
            Center(child: Image.asset("assets/img/gramatica1-1.png")),
            const SizedBox(height: 30),
            const Divider(),
            Text(
              'Tipo 1 o "Sensible al contexto"',
              style: Theme.of(context).textTheme.headline4,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
              child: Text(
                datos[2] ?? "",
                textAlign: TextAlign.justify,
                style: GoogleFonts.playfairDisplay(fontSize: 18),
              ),
            ),
            Center(child: Image.asset("assets/img/gramatica1-2.png")),
            const SizedBox(height: 30),
            const Divider(),
            Text(
              'Tipo 2 o "libre de contexto"',
              style: Theme.of(context).textTheme.headline4,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
              child: Text(
                datos[3] ?? "",
                textAlign: TextAlign.justify,
                style: GoogleFonts.playfairDisplay(fontSize: 18),
              ),
            ),
            Center(child: Image.asset("assets/img/gramatica1-3.png")),
            const SizedBox(height: 30),
            const Divider(),
            Text(
              'Tipo 3 o "Regular"',
              style: Theme.of(context).textTheme.headline4,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
              child: Text(
                datos[4] ?? "",
                textAlign: TextAlign.justify,
                style: GoogleFonts.playfairDisplay(fontSize: 18),
              ),
            ),
            Center(child: Image.asset("assets/img/gramatica1-4.png")),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}