import 'package:avaliacao_1/src/features/app_bar/presentation/widgets/appbar_leading.dart';
import 'package:avaliacao_1/src/features/cores/data/cores.dart';
import 'package:avaliacao_1/src/features/menu/presentation/pages/menu.dart';
import 'package:avaliacao_1/src/features/sobre/presentation/widgets/sobre_app.dart';
import 'package:avaliacao_1/src/features/sobre/presentation/widgets/sobre_equipe.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SobreScreen extends StatelessWidget {
  const SobreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 70,
          centerTitle: true,
          backgroundColor: const Color.fromRGBO(36, 36, 75, 1),
          leading: const AppBarLeading(),
          title: Text(
            'Diário',
            style: GoogleFonts.lato(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold
            ),
          ),
        ),
        drawer: const Drawer(
          backgroundColor: Cores.roxo3,
          child: Menu(),
        ),
        body: SingleChildScrollView(
          child: Container (
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              color: Cores.roxo1,
            ),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 20,
                ),
                SobreApp(),
                SizedBox(
                  height: 20,
                ),
                SobreEquipe(),
                SizedBox(
                  height: 20,
                )
              ]
            )
          )
        )
      ),
    );
  }
}