import 'package:flutter/material.dart';
//para que no cambie su diseño
import 'package:flutter/services.dart';

//rutas
import 'package:parcial2/src/app.dart';
import 'package:parcial2/src/sing_in.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    //para que no cambie su diseño
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    //rutas
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App Parcial',
      // elegir las rutas
      initialRoute: 'sing_in',
      routes: <String, WidgetBuilder>{
        'Home': (BuildContext context) => MyAppForm(),
        'sing_in': (BuildContext context) => SingIn(),
        'Registro': (BuildContext context) => RegistroPage(),
      },
    );
  }
}
