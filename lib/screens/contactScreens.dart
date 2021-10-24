import 'package:flutter/material.dart';
import 'package:portifolio_app/components/contactHeader.dart';
import 'package:portifolio_app/components/sliverAppBarCustom.dart';
import 'package:styled_text/styled_text.dart';

import '../appRoutes.dart';

class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBarCustom(),
          const SliverToBoxAdapter(
            child: HeaderContact(pagina: 'Contato'),
          ),


          SliverToBoxAdapter(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(padding: EdgeInsets.only(top: 40)),
                StyledText(
                  text: '<bold><h1>Contatos</h1></bold>',
                  tags: {
                    'bold': StyledTextTag(style: TextStyle(fontWeight: FontWeight.bold)),
                    'h1': StyledTextTag(style: TextStyle(fontSize: 30))
                  },
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    GestureDetector(

                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(30),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.20,
                              height: MediaQuery.of(context).size.height * 0.25,
                              //  padding: EdgeInsets.fromLTRB(15, 20, 0,0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image: NetworkImage('https://images.unsplash.com/photo-1611944212129-29977ae1398c?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=774&q=80'),
                                    fit: BoxFit.cover
                                ),
                              ),
                            ),
                          ),

                          Text('LinkedIn',
                            style: TextStyle(
                                fontSize: 20
                            ),),
                        ],
                      ),
                      onTap: (){
                        abrirLinkedin();
                      },
                    ),


                    GestureDetector(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(30),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.20,
                              height: MediaQuery.of(context).size.height * 0.25,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image: NetworkImage('https://images.unsplash.com/photo-1618401471353-b98afee0b2eb?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=888&q=80'),
                                    fit: BoxFit.cover
                                ),
                              ),
                            ),
                          ),
                          Text('GitHub',
                            style: TextStyle(
                                fontSize: 20
                            ),),
                        ],
                      ),
                      onTap: (){
                        abrirGitHub();
                      },
                    ),


                    GestureDetector(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(30),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.20,
                              height: MediaQuery.of(context).size.height * 0.25,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image: NetworkImage('https://images.unsplash.com/photo-1581349437898-cebbe9831942?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80'),
                                    fit: BoxFit.cover
                                ),
                              ),
                            ),
                          ),
                          Text('E-mail',
                            style: TextStyle(
                                fontSize: 20
                            ),),
                        ],
                      ),
                      onTap: (){
                        abrirEmail();
                      },
                    ),

                  ],
                ),




              ],
            ),
          ),

        ],
      ),
    );
  }
}
