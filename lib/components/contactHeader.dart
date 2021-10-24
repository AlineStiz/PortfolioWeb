import 'package:flutter/material.dart';

class HeaderContact extends StatelessWidget {
  final pagina;

  const HeaderContact({
    Key? key,
    required this.pagina,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            SafeArea(
              child: Image.network(
                'https://images.pexels.com/photos/326576/pexels-photo-326576.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.4,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ],
    );
  }
}