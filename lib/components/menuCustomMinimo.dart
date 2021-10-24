import 'package:flutter/material.dart';
import 'package:portifolio_app/appRoutes.dart';
import 'package:portifolio_app/utils/styles.dart';

class MenuCustomMinimo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
       width: MediaQuery.of(context).size.width,
       height: MediaQuery.of(context).size.width,
       color: Styles.corAppBar,
       child: Column(
         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
         children: [

         IconButton(onPressed: () {
           Navigator.of(context).pop();
         }, icon: Icon(Icons.menu, color: Styles.corNome,)),

           GestureDetector(
               onTap: (){
                 Navigator.of(context).pushNamed(Rotas.PAGINA_INICIAL);
               },
               child: const Text(
                 'Página Inicial',
                 style: TextStyle(color: Styles.corNome, fontSize: 17),
               )),

           GestureDetector(
             onTap: (){
               Navigator.of(context).pushNamed(Rotas.SOBRE_MIM);
             },
             child: const Text(
               'Sobre Mim',
               style: TextStyle(color: Styles.corNome, fontSize: 17),
             ),
           ),

           GestureDetector(
             onTap: (){
               Navigator.of(context).pushNamed(Rotas.TRABALHOS);
             },
             child: Text(
               'Trabalhos',
               style: TextStyle(color: Styles.corNome, fontSize: 17),
             ),
           ),

           GestureDetector(
             onTap: (){
               Navigator.of(context).pushNamed(Rotas.CONTATO);
             },
             child: Text(
               'Contato',
               style: TextStyle(color: Styles.corNome, fontSize: 17),
             ),
           ),

           /*
           GestureDetector(
             onTap: () {
               Navigator.of(context).pushNamed(Rotas.CONTATO);
             },
                child: Text('Trabalhos')),
            */

         ],
       ),
      ),
    );
  }
}
