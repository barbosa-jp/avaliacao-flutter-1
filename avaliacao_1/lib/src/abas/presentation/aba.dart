import 'package:flutter/material.dart';

class Aba extends StatelessWidget {
  const Aba({super.key, required this.icone});

  final IconData icone;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: Icon(
        icone,
        color: Colors.white
      )
    );
  }
}
