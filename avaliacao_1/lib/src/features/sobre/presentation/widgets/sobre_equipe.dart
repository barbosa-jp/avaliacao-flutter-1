import 'package:avaliacao_1/src/features/cores/data/cores.dart';
import 'package:avaliacao_1/src/features/sobre/presentation/widgets/membro_equipe.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SobreEquipe extends StatelessWidget {
  const SobreEquipe({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min, 
      children: [
        Text(
          'Equipe',
          style: GoogleFonts.lato(
            color: Cores.branco,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        const MembroEquipe(
          descricao: 'Diário é um aplicativo para ajudar pessoa a organizar seus pensamentos ou documentar experiências do dia a dia.',
          imagem: 'assets/images/luana.jpg'
        ),
        const MembroEquipe(
          descricao: 'Diário é um aplicativo para ajudar pessoa a organizar seus pensamentos ou documentar experiências do dia a dia.',
          imagem: 'assets/images/joaopedro.jpg'
        )
      ]
    );
  }
}