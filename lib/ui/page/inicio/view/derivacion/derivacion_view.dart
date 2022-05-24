import 'package:animate_do/animate_do.dart';
import 'package:automatas2/services/navegacion_servies.dart';
import 'package:flutter/material.dart';

class DerivacionView extends StatelessWidget {
  final Size tamano;

  const DerivacionView({Key? key, required this.tamano}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: tamano.height,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FadeInLeft(
            duration: const Duration(seconds: 3),
            child: SizedBox(
              width: tamano.width * 0.4,
              child: Image.asset(
                "assets/img/argbol1.png",
                width: tamano.width * 0.4,
              ),
            ),
          ),
          FadeInRight(
            duration: const Duration(seconds: 3),
            child: SizedBox(
              width: tamano.width * 0.4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Árboles de derivación",
                    style: Theme.of(context).textTheme.headline3,
                  ),
                  const SizedBox(height: 30),
                  const Text(
                      "Un árbol de derivación permite mostrar gráficamente cómo se puede derivar cualquier cadena de un lenguaje a partir del símbolo distinguido de una gramática que genera ese lenguaje."),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      onPrimary: Colors.blueAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      textStyle: Theme.of(context).textTheme.labelLarge,
                    ),
                    onPressed: () {
                      NavegacionServies.navigateTo(arbolRouter);
                    },
                    child: const Text("Ver más"),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
