import 'package:avaliacao_1/src/features/abas/presentation/aba.dart';
import 'package:avaliacao_1/src/features/tela_incial/presentation/widgets/botao_enviar.dart';
import 'package:flutter/material.dart';
import 'package:avaliacao_1/src/features/tela_incial/presentation/pages/tela_incial_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:avaliacao_1/src/features/menu/presentation/pages/menu.dart';

class Diario extends StatelessWidget {
  const Diario({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        //controller for TabBar
      length: 2,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            toolbarHeight: 70,
            centerTitle: true,
            leading: Builder(
              builder: (context) { 
                return IconButton(
                  padding: const EdgeInsets.only(left: 20),
                  icon: const Icon(
                    Icons.menu,
                    color: Colors.white,
                    size: 40,
                  ),
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                );
              }
            ),
            title: Text(
              'Diário',
              style: GoogleFonts.lato(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold
                ),
            ),
            backgroundColor: const Color.fromRGBO(36, 36, 75, 1),
            bottom: const TabBar(
              dividerColor: Colors.transparent,
              indicatorColor: Colors.white,
              tabs: [
                Aba(icone: Icons.edit_square),
                Aba(icone: Icons.settings)
              ],
            ),
          ),
          drawer: const Drawer(
            backgroundColor: Color.fromRGBO(69, 67, 109, 1),
            child: Menu()
          ),
          body: Container(
            decoration: const BoxDecoration(
              color: Color.fromRGBO(101, 97, 142, 1),
            ),
            child: const TabBarView(
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    TelaInicial(),
                    BotaoEnviar(),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    TelaInicial(),
                  ],
                ),
              ]
            ) 
          ),
        ),
      )
    );
  }
}
