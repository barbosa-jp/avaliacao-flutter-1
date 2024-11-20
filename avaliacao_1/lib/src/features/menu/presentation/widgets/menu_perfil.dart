import 'package:avaliacao_1/src/features/cores/cores.dart';
import 'package:flutter/material.dart';

class MenuPerfil extends StatelessWidget {
  const MenuPerfil({super.key});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        dividerTheme: const DividerThemeData(color: Colors.transparent),
      ),
      child: const DrawerHeader(
        decoration: BoxDecoration(
          color: Cores.roxo4,
        ),
        child: Column(
          children: [
            Center(
              child: SizedBox(
                height: 90,
                width: 90,
                child: CircleAvatar(
                  backgroundColor: Color.fromRGBO(36, 36, 75, 1),
                  child: Icon(
                    Icons.person_2_sharp,
                    size: 50,
                    color: Cores.branco50 
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'João Pedro',
              style: TextStyle(
                color: Cores.branco,
                fontWeight: FontWeight.bold,
                fontSize: 25
              ),
            )
          ],
        ),
      ),
    );
  }
}