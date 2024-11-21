import 'package:avaliacao_1/src/features/mandar_texto/data/blocos_texto.dart';
import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

class EditarPerfil extends StatelessWidget {
  const EditarPerfil({super.key});

  @override
  Widget build(BuildContext context) {
    return Column( 
      children: [
        ...blocosTexto.map((text) {
        return Text(text);
      })
      ]
    );
  }
}
