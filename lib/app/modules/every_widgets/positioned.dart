//!positioned
import 'package:flutter/material.dart';

class Widget155 extends StatelessWidget {
  const Widget155({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          Positioned(
            left: 20,
            top: 20,
            child: Image.network(
              'https://picsum.photos/seed/picsum/200/300',
              width: 250,
            ),
          ),
          Positioned(
            left: 60,
            top: 120,
            child: Image.network(
              'https://picsum.photos/seed/picsum/200/300',
              width: 250,
            ),
          ),
          Positioned(
            left: 100,
            top: 220,
            child: Image.network(
              'https://picsum.photos/seed/picsum/200/300',
              width: 250,
            ),
          ),
        ],
      ),
    );
  }
}
