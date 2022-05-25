import 'package:animate_do/animate_do.dart';
import 'package:automatas2/services/navegacion_servies.dart';
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
      child: FadeInRight(
        duration: const Duration(seconds: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.01),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              width: tamano.width * 0.4,
              height: tamano.width * 0.4,
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
                    onPressed: () {
                      NavegacionServies.navigateTo(gblRouter);
                    },
                    child: const Text("Ver más"),
                  )
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment(0.0, 1.0),
                  colors: <Color>[Colors.greenAccent, Colors.blueAccent],
                  tileMode: TileMode.repeated,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              width: tamano.width * 0.4,
              height: tamano.width * 0.3,
              padding: const EdgeInsets.all(10),
              child: Image.asset("assets/img/glb1.png"),
            ),
          ],
        ),
      ),
    );
  }
}
