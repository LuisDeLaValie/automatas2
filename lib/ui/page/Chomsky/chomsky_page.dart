import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class ChomskyPage extends StatelessWidget {
  const ChomskyPage({Key? key}) : super(key: key);
  final String datos = """
# FNC

Toda GLC se puede transformar en una gramática en la Forma Normal de Chomsky que requiere que las reglas tomen la siguiente forma:

![chusmk](assets/img/chusmk1.png)

# Proceso de transformación 

Para transformar una gramática (V,Σ,P,S) en su FNC se siguen los siguientes pasos:

0.   Agregar un nuevo símbolo inicial 

![chusmk](assets/img/chumsk2.png)

1.   Quitar las transiciones ε
  - Identificar las producción A→ε A
  - Producir nuevas producciones suponiendo que dónde aparece A es ε; por ejemplo si P→AxB;A→ε;B→ε entonces se producen las nuevas reglas para P:
  
  ![chusmk](assets/img/chumsk3.png)

  - Eliminar de la gramática las transiciones ε

2.   Quitar las transiciones unitarias

  - Identificar las producción A→B A 
  - Por cada B→α B agregar las reglas: 

  ![chusmk](assets/img/chumsk4.png)

3.   Quitar las transiciones largas

  - Identificar las producción A→A0A1A2…Am
  - Cortarlas usando símbolos auxiliares para encadenar la regla

  ![chusmk](assets/img/chumsk5.png)

4.   Quitar los terminales binarios

  - Identificar las producción A→aB 
  - Agregar una regla con el no terminal (si es necesario) y remplazar en la regla original la aparición del terminal con ese no terminal 

  ![chusmk](assets/img/chumsk6.png)






""";

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(title: const Text('Chomsky')),
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
