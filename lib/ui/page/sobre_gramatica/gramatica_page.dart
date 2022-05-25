import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

// ignore: must_be_immutable
class GramaticaPage extends StatelessWidget {
  GramaticaPage({Key? key}) : super(key: key);

  String datos = """
# DEFINICIÓN FORMAL DE GRAMÁTICA
Una gramática es una cuádrupla :

> G = ( VT , VN , S , P )

donde :

- **VT** = { conjunto finito de símbolos terminales }
- **VN** = { conjunto finito de símbolos no terminales }
- **S** es el símbolo inicial y pertenece a *VN*.
- **P** = { conjunto de producciones o de reglas de derivación }

Todas las cadenas del lenguaje definido por la gramática están formados con símbolos del vocabulario terminal **VT**. El vocabulario terminal se define por enumeración de los símbolos terminales.


El vocabulario no terminal **VN** es el conjunto de símbolos introducidos como elementos auxiliares para la definición de la gramática, y que no figuran en las sentencias del lenguaje. El vocabulario no terminal se define por enumeración de los símbolos no terminales.

La intersección entre el vocabulario terminal y no terminal es el conjunto vacio : 
>{ VN } ∩ { VT } = { ∅ }

La unión entre el vocabulario terminal y no terminal es el vocabulario : 
>{ VN } ∪ { VT } = { V }

En ocasiones es importante distinguir si un determinado vocabulario incluye o no la cadena vacia, indicándose respectivamente con superíndice ***+*** o superíndice ___*___, tal como se muestra a continuación :

>V+ = V − { λ } 
>V* = V + { λ }

El símbolo inicial **S** es un símbolo no terminal a partir del cual se aplican las reglas de la gramática para obtener las distintas cadenas del lenguaje.

Las producciones **P** son las reglas que se aplican desde el símbolo inicial para obtener las cadenas del lenguaje. El conjunto de producciones **P** se define por medio de la enu- meración de las distintas producciones, en forma de reglas o por medio de un metalenguaje por ejemplo **BNF (Backus Naur Form)** o **EBNF (Extended Backus Naur Form)**.


---
## Tipo 0 o *No restringida o recursivamente enumerables*

x puede ser sustituido por y si x está, ya sea, en los símbolos **No Terminales** o los símbolos **Terminales**, sin incluir la cadena vacía e y está en los símbolos **No Terminales** o **Terminales**, incluyendo la cadena vacía.

Los lenguajes generados por este tipo de gramáticas se llaman *lenguajes sin restricciones*

Nota: "+" significa "sin incluir la cadena vacía" y "*" significa "incluyendo la cadena vacía". "/" significa "o"

Estos lenguajes también son denominados "recursivamente enumerables" . 

![Drag Racing](assets/img/gramatica1-1.png)

---
## Tipo 1 o *Sensible al contexto*

α puede ser reemplazado por β si la longitud de α es menor o igual a la longitud de β, siendo α un símbolo Terminal o una cadena vacía z1, seguido de un símbolo No Terminal X, seguido de otro símbolo Terminal o una cadena vacía z2. En el caso de β, z1 debe ser el mismo símbolo z1 de α seguido de un símbolo No Terminal o Terminal sin ser la cadena vacía, seguido del símbolo z2.
![Drag Racing](assets/img/gramatica1-2.png)

---
## Tipo 2 o *libre de contexto*

x puede ser reemplazado por y si x pertenece a los símbolos No Terminales e y es un Terminal o No Terminal, incluyendo la cadena vacía.
![Drag Racing](assets/img/gramatica1-3.png)

---
## Tipo 3 o *Regular*
También llamada "De contexto regular"

α puede ser reemplazado por β si α pertenece a los símbolos No Terminales y β es uno de estos 3:

- Un símbolo Terminal no nulo seguido de un No Terminal.
- Un símbolo No Terminal seguido de un símbolo Terminal no nulo.
- Un símbolo Terminal pudiendo ser la cadena vacía.

![Drag Racing](assets/img/gramatica1-3.png)

""";

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(title: const Text("Gramatica")),
      body: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: size.width * 0.2, vertical: 10),
        child: Markdown(
          data: datos,
          selectable: true,
        ),
      ),
    );
  }
}
