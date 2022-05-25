import 'package:automatas2/services/navegacion_servies.dart';
import 'package:flutter/material.dart';

class ChomskyView extends StatelessWidget {
  final Size tamano;

  const ChomskyView({
    Key? key,
    required this.tamano,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: tamano.height,
      width: tamano.width,
      child: Center(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: const LinearGradient(
              begin: Alignment.centerRight,
              end: Alignment(0.0, 1.4),
              colors: <Color>[
                Color(0xffb8f0f7),
                Color(0xff9cc4f5),
              ],
              tileMode: TileMode.clamp,
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
          width: tamano.width * 0.9,
          height: tamano.width * 0.3,
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Chomsky",
                style: Theme.of(context).textTheme.headline3?.copyWith(
                      color: Colors.white,
                    ),
              ),
              const SizedBox(height: 30),
              const Padding(
                padding: EdgeInsets.all(60.0),
                child: Text(
                  "En alguna ocasiones es posible transformar una Gramática en un otra debilmente equivalente, es decir que genera exactamente el mismo lenguaje pero con una estructura de árbol de derivación diferente. Alguna veces es algo conveniente porque los árboles de derivación de la nueva gramática podrían tener algunas propiedades de las cuales se podría tomar ventaja.",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              TextButton(
                style: TextButton.styleFrom(
                  primary: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(
                      color: Colors.white,
                    ),
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                onPressed: () {
                  NavegacionServies.navigateTo(chumkyRouter);
                },
                child: const Text("Ver más"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
