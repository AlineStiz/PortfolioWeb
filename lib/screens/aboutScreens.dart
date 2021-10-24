import 'package:auto_size_text_pk/auto_size_text_pk.dart';
import 'package:flutter/material.dart';
import 'package:portifolio_app/components/bigHeader.dart';
import 'package:portifolio_app/components/programming_skills.dart';
import 'package:portifolio_app/components/sliverAppBarCustom.dart';
import 'package:portifolio_app/components/solfSkills.dart';
import 'package:portifolio_app/utils/styles.dart';
import 'package:styled_text/styled_text.dart';

class AboutScreen extends StatefulWidget {
  @override
  _AboutScreenState createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBarCustom(),
          const SliverToBoxAdapter(
            child: BigHeader(pagina: 'Sobre mim'),
          ),
         SliverToBoxAdapter(
           child: Column(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: [
               Padding(padding: const EdgeInsets.fromLTRB(60, 40, 80, 10)),
               CircleAvatar(
                 radius: 70,
                 backgroundImage: AssetImage("assets/imagens/Aline.png"),
               ),
               Padding(padding: EdgeInsets.only(top: 50)),
               StyledText(
                 text: '<bold><h1>Aline Mariana Stiz</h1></bold>',
                 tags: {
                   'bold': StyledTextTag(style: TextStyle(fontWeight: FontWeight.bold)),
                   'h1': StyledTextTag(style: TextStyle(fontSize: 30))
                 },
               ),

               Padding(
                 padding: const EdgeInsets.fromLTRB(60, 40, 60, 40),
                 child: Container(
                   width: MediaQuery.of(context).size.width,
                   height: MediaQuery.of(context).size.height * 0.25,
                   child: const AutoSizeText(
                       "        Acadêmica do Curso Superior de Tecnologia em Análise e Desenvolvimento de Sistemas, "
                           "IFRO - Campus Ariquemes. Possui graduação em Licenciatura Plena em Física - UNIR,"
                           " Campus Ji-Paraná, mestrado em Ensino de Física pelo programa Mestrado Nacional "
                           "Profissional em Ensino de Física - Polo de Ji-Paraná. Atualmente é servidora do "
                           "Instituto Federal de Educação Ciência e Tecnologia de Rondônia, IFRO - Campus Ariquemes,"
                           "Técnica Administrativa em Educação (Técnica em Laboratório de Física). ",
                     style: TextStyle(
                       fontSize: 17,
                     ),
                     textAlign: TextAlign.justify,
                   ),
                 ),
               ),
               Text('Habilidades em Programação',
                 style: TextStyle(
                     fontSize: 25
                 ),),

               Padding(padding: EdgeInsets.fromLTRB(0, 30, 60, 30)),
               ProgrammingSkills(),
               Padding(padding: EdgeInsets.only(bottom: 60)),

             ],
           ),
         ),
        ],
      ),
    );
  }
}
