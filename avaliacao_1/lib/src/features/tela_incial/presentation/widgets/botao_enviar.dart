import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BotaoEnviar extends StatelessWidget {
  const BotaoEnviar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 30),
      child: SizedBox(
        width: 135,
        height: 45,
        child: OutlinedButton(
          style: OutlinedButton.styleFrom(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))
            ),
            backgroundColor: const Color.fromARGB(255, 36, 36, 75)
          ),
          onPressed: () {}, 
          child: Text(
            'Enviar',
            style: GoogleFonts.lato(
              color: Colors.white,
              fontSize: 18,
            ),
          )
        ),
      ),
    );
  }
}