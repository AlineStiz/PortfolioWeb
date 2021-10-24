import 'package:auto_size_text_pk/auto_size_text_pk.dart';
import 'package:flutter/material.dart';
import 'package:portifolio_app/components/cards.dart';
import 'package:portifolio_app/components/sliverAppBarCustom.dart';
import 'package:portifolio_app/utils/carrouselSlider.dart';
import 'package:styled_text/styled_text.dart';

class WorksScreen extends StatefulWidget {
  const WorksScreen({Key? key}) : super(key: key);

  @override
  _WorksScreenState createState() => _WorksScreenState();
}

class _WorksScreenState extends State<WorksScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
            slivers: [
          // ignore: prefer_const_constructors
          SliverAppBarCustom(),

          SliverToBoxAdapter(
            child: CarrouselSliderScreen(),
          ),
          SliverToBoxAdapter(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(padding: EdgeInsets.only(top: 60)),
                StyledText(
                  text: "<bold><h1> Meus Trabalhos </h1></bold>",
                  tags: {
                    'bold': StyledTextTag(
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    'h1': StyledTextTag(style: TextStyle(fontSize: 30))
                  },
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(60, 40, 60, 0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.1,
                    child: const AutoSizeText(
                      "     Durante a faculdade, desenvolvi varias atividades de programação. "
                      "Aqui está alguns exemplos:",
                      style: TextStyle(
                        fontSize: 17,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),

          SliverGrid.count(
            crossAxisCount: 3,
            children: [
              CardsCustom(color: Colors.blue.shade200, title: '', description: '',image: "assets/imagens/app.jpeg",),
              CardsCustom(color: Colors.purple.shade200, title: '', description: '',image: "assets/imagens/app1.jpeg",),
              CardsCustom(color: Colors.blue, title: '', description: '',image: "assets/imagens/app2.png",),
            ],
          ),

        ]
        )
    );
  }
}