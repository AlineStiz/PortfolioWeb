import 'package:auto_size_text_pk/auto_size_text_pk.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardsCustom extends StatelessWidget {

  final color;
  final title;
  final description;
  final image;

  const CardsCustom({Key?key, this.color, this.title, this.description, this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Card(

            child: Container(
              width: 100,
              height: 400,
              color: color,

              child: Column(
                children: [
                  Image.asset(image),

/*
                  AutoSizeText(title,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 17
                  ),
                    textAlign: TextAlign.justify,),

                  AutoSizeText(description,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 3,
                    style: TextStyle(
                        fontSize: 17
                    ),
                    textAlign: TextAlign.justify,)
*/
                ],
              ),
            ),
          ),
    );
  }
}