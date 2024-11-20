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
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const TelaInicial(),
              Padding(
                padding: const EdgeInsets.only(right: 30),
                child: SizedBox(
                  width: 120,
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))
                      ),
                      backgroundColor: const Color.fromARGB(255, 36, 36, 75)
                    ),
                    onPressed: () {}, 
                    child: const Text(
                      'Enviar',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}