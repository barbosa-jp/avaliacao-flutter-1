import 'package:flutter/material.dart';
import 'package:avaliacao_1/src/tela_incial/presentation/tela_incial_screen.dart';

class Diario extends StatelessWidget {
  const Diario({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 70,
          centerTitle: true,
          leading: IconButton(
              padding: const EdgeInsets.only(left: 20),
              onPressed: () {}, 
              icon: const Icon(
                Icons.menu,
                color: Colors.white,
                size: 40,
              )
            ),
          title: const Text(
            'Diário',
            style: TextStyle(
              color: Colors.white, 
              fontSize: 30,
              fontWeight: FontWeight.bold
            ),
          ),
          backgroundColor: const Color.fromRGBO(36, 36, 75, 1),
        ),
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
