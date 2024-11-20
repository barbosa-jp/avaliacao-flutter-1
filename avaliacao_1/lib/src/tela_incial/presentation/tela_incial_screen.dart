import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TelaInicial extends StatelessWidget {
  const TelaInicial({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: 350,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: TextField(
                cursorColor: Colors.white,
                style: GoogleFonts.lato(color: Colors.white),
                maxLines: 23,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color.fromARGB(255, 85, 82, 125),
                  hintText: 'Como foi seu dia?',
                  hintStyle: GoogleFonts.lato(
                    color: const Color.fromARGB(100, 255, 255, 255)
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
    );
  }
}