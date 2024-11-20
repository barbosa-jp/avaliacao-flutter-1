import 'package:avaliacao_1/src/features/app_bar/presentation/widgets/appbar_leading.dart';
import 'package:avaliacao_1/src/features/cores/data/cores.dart';
import 'package:avaliacao_1/src/features/menu/presentation/pages/menu.dart';
import 'package:avaliacao_1/src/features/perfil/perfil.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PerfilScreen extends StatefulWidget {
  const PerfilScreen({super.key});
  @override
  State<PerfilScreen> createState() => _PerfilScreenState();
}

class _PerfilScreenState extends State<PerfilScreen> {
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
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              color: Cores.roxo1,
            ),
            child: const Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Perfil(),
                SizedBox(
                  height: 20,
                ),
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
