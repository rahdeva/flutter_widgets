//! ColorFiltered
import 'package:flutter/material.dart';

class Widget045 extends StatelessWidget {
  const Widget045({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ColorFiltered(
          colorFilter: const ColorFilter.mode(
            Colors.white,
            BlendMode.color,
          ),
          child: Image.network('https://picsum.photos/seed/picsum/200/300'),
        ),
        Image.network('https://picsum.photos/seed/picsum/200/300'),
      ],
    );
  }
}
