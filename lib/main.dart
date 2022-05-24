import 'package:flutter/material.dart';

import 'services/navegacion_servies.dart';
import 'services/router.dart';

void main() {
  Flurorouter.configureRouter();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      initialRoute: homeRouter,
      navigatorKey: NavegacionServies.navigatorKey,
      onGenerateRoute: Flurorouter.router.generator,
      builder: (context, child) => child!,
    );
  }
}
