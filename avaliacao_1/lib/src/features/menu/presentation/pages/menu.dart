import 'package:avaliacao_1/src/features/menu/presentation/widgets/menu_opcao.dart';
import 'package:avaliacao_1/src/features/menu/presentation/widgets/menu_perfil.dart';
import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView( 
      padding: EdgeInsets.zero,
      children: [
          const MenuPerfil(),
          ListTile(
            title: const MenuOpcao(icone: Icons.person_2_sharp, texto: 'Perfil'),
            onTap: () {},
          ),
          ListTile(
            title: const MenuOpcao(icone: Icons.info_outline, texto: 'Sobre'),
            onTap: () {},
        )
      ]
    );
  }
}
