import 'package:avaliacao_1/src/features/cores/data/cores.dart';
import 'package:flutter/material.dart';
import 'package:avaliacao_1/src/features/mandar_texto/presentation/widgets/botao_enviar.dart';
import 'package:google_fonts/google_fonts.dart';

class MandarTexto extends StatelessWidget {
  const MandarTexto({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                width: 350,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: TextField(
                    cursorColor: Cores.branco,
                    style: GoogleFonts.lato(
                      color: Cores.branco
                    ),
                    maxLines: 23,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Cores.roxo2,
                      hintText: 'Como foi seu dia?',
                      hintStyle: GoogleFonts.lato(
                        color: Cores.branco50
                      ),
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
              ),
            ]
          )
        ),
        const BotaoEnviar(),
      ]
    );
  }
}