// ignore: file_names
// ignore: file_names
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class FotosAnimacaoLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            SafeArea(
              child: Image.network(
                'https://images.unsplash.com/photo-1563547257011-054b1054e185?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=871&q=80',
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 100),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    DefaultTextStyle(
                      style: const TextStyle(
                          fontSize: 35.0,
                          fontFamily: 'Agne',
                          color: Colors.white),
                      child: Center(
                        child: AnimatedTextKit(
                          repeatForever: true,
                          pause: Duration(seconds: 3),
                          animatedTexts: [
                            TypewriterAnimatedText(
                                'Meu nome é \nAline Mariana Stiz.'),
                            TypewriterAnimatedText(
                                'Sou acadêmica de ADS do \nIFRO - Campus Ariquemes.'),
                          ],
                        ),
                      ),
                    ),
                  ]),
            ),
          ],
        ),
      ],
    );
  }
}
