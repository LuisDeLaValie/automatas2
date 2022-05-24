import 'package:flutter/material.dart';

class GlcView extends StatelessWidget {
  final Size tamano;

  const GlcView({
    Key? key,
    required this.tamano,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: tamano.height,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: tamano.width * 0.4,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Gramáticas Libres de Contexto",
                  style: Theme.of(context).textTheme.headline3,
                ),
                const SizedBox(height: 30),
                const Text(
                    "una gramática libre de contexto (o de contexto libre) es una gramática formal en la que cada regla de producción es de la forma: V → w"),
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
                  onPressed: () {},
                  child: const Text("Ver ejemplos"),
                )
              ],
            ),
          ),
          SizedBox(
            width: tamano.width * 0.4,
            child: Image.asset("assets/img/glb1.png"),
          ),
        ],
      ),
    );
  }
}
