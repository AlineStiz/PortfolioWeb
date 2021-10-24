import 'package:flutter/material.dart';
import 'package:portifolio_app/appRoutes.dart';
import 'package:portifolio_app/utils/styles.dart';

class MenuCustom extends StatelessWidget {
  const MenuCustom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: const EdgeInsets.fromLTRB(12, 0, 24, 0),
      child: Row(
        children:  [
          GestureDetector(
              onTap: (){
                Navigator.of(context).pushNamed(Rotas.PAGINA_INICIAL);
              },
              child: const Text(
                'Página Inicial',
                style: TextStyle(color: Styles.corNome, fontSize: 17),
              )),
          const VerticalDivider(),
          GestureDetector(
            onTap: (){
              Navigator.of(context).pushNamed(Rotas.SOBRE_MIM);
            },
            child: const Text(
              'Sobre Mim',
              style: TextStyle(color: Styles.corNome, fontSize: 17),
            ),
          ),
          VerticalDivider(),
          GestureDetector(
            onTap: (){
              Navigator.of(context).pushNamed(Rotas.TRABALHOS);
            },
            child: Text(
              'Trabalhos',
              style: TextStyle(color: Styles.corNome, fontSize: 17),
            ),
          ),
          VerticalDivider(),
          GestureDetector(
            onTap: (){
              Navigator.of(context).pushNamed(Rotas.CONTATO);
            },
            child: Text(
              'Contato',
              style: TextStyle(color: Styles.corNome, fontSize: 17),
            ),
          ),
        ],
      ),
    );
  }
}
