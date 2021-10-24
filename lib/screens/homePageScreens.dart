import 'package:flutter/material.dart';
import 'package:portifolio_app/components/fotoAnimacaoLayout.dart';
import 'package:portifolio_app/components/sliverAppBarCustom.dart';

class HomePageScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBarCustom(),
          SliverToBoxAdapter(
            child: FotosAnimacaoLayout(),
          )
        ],
      ),
    );
  }
}




