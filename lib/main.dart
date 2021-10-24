import 'package:flutter/material.dart';
import 'package:portifolio_app/appRoutes.dart';
import 'package:portifolio_app/components/menuCustomMinimo.dart';
import 'package:portifolio_app/screens/contactScreens.dart';
import 'package:portifolio_app/screens/homePageScreens.dart';
import 'package:portifolio_app/screens/aboutScreens.dart';
import 'package:portifolio_app/screens/worksScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light(
        ),
        home: HomePageScreen(),
        routes: {
          Rotas.PAGINA_INICIAL: (context) => HomePageScreen(),
          Rotas.SOBRE_MIM: (context) => AboutScreen(),
          Rotas.TRABALHOS: (context) => WorksScreen(),
          Rotas.MENU_CUSTOM_MINIMO: (context) => MenuCustomMinimo(),
          Rotas.CONTATO: (context) => Contact(),
        }
    );
  }
}