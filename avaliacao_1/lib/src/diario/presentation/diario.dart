import 'package:flutter/material.dart';
import 'package:avaliacao_1/src/tela_incial/presentation/tela_incial_screen.dart';

class Diario extends StatelessWidget {
  const Diario({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            color: Color.fromRGBO(101, 97, 142, 1),
          ),
          child: const Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              TelaInicial(),
              
            ],
          ),
        ),
      ),
    );
  }
}