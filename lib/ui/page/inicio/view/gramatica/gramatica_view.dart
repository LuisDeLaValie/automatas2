import 'package:animate_do/animate_do.dart';
import 'package:automatas2/services/navegacion_servies.dart';
import 'package:flutter/material.dart';

class GramaticaView extends StatefulWidget {
  final Size tamano;
  const GramaticaView({
    Key? key,
    required this.tamano,
  }) : super(key: key);

  @override
  State<GramaticaView> createState() => _GramaticaViewState();
}

class _GramaticaViewState extends State<GramaticaView> {
  double top1 = 0;
  @override
  void initState() {
    top1 = 100;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueAccent,
      height: widget.tamano.height,
      child: Column(
        children: [
          Text(
            "Utomatas Tema 5",
            style: Theme.of(context).textTheme.headline2?.copyWith(
                  color: Colors.white,
                ),
          ),
          const SizedBox(height: 10),
          Text(
            "Gramatica",
            style: Theme.of(context).textTheme.headline5?.copyWith(
                  color: Colors.white,
                ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FadeInUp(
                duration: const Duration(seconds:1),
                child: Image.asset("assets/img/gramatica1.png",
                    width: widget.tamano.width * 0.3),
              ),
              FadeInUp(
                duration: const Duration(seconds:1),
                child: Image.asset("assets/img/gramatica2.png",
                    width: widget.tamano.width * 0.3),
              ),
              FadeInUp(
                duration: const Duration(seconds:1),
                child: Image.asset("assets/img/gramatica3.png",
                    width: widget.tamano.width * 0.3),
              ),
            ],
          ),
          const SizedBox(height: 30),
          SizedBox(
            width: widget.tamano.width * 0.6,
            child: Text(
              'La gramática es un ente formal para especificar, de una manera finita, el conjunto de cadenas de símbolos que constituyen un lenguaje.',
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .headline5
                  ?.copyWith(color: Colors.white),
            ),
          ),
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
              NavegacionServies.navigateTo(gramaticaRouter);
            },
            child: const Text('Ver Gramática'),
          ),
        ],
      ),
    );
  }
}
