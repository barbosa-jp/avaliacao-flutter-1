import 'package:avaliacao_1/src/abas/presentation/aba.dart';
import 'package:flutter/material.dart';
import 'package:avaliacao_1/src/tela_incial/presentation/tela_incial_screen.dart';

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
              title: const Text(
                'Diário',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
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
             drawer: Drawer(
               // Add a ListView to the drawer. This ensures the user can scroll
  // through the options in the drawer if there isn't enough vertical
  // space to fit everything.
              child: ListView(
                // Important: Remove any padding from the ListView.
                padding: EdgeInsets.zero,
                children: [
                  const DrawerHeader(
                    decoration: BoxDecoration(
                      color: Colors.blue,
                    ),
                    child: Text('Drawer Header'),
                  ),
                  ListTile(
                    title: const Text('Item 1'),
                    onTap: () {
                      // Update the state of the app.
                      // ...
                    },
                  ),
                  ListTile(
                    title: const Text('Item 2'),
                    onTap: () {
                      // Update the state of the app.
                      // ...
                    },
                  ),
                ],
              ),
            ),
            body: Container(
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(101, 97, 142, 1),
                ),
                child: TabBarView(children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const TelaInicial(),
                      Padding(
                        padding: const EdgeInsets.only(right: 30),
                        child: SizedBox(
                          width: 135,
                          height: 45,
                          child: OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                  shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                  backgroundColor:
                                      const Color.fromARGB(255, 36, 36, 75)),
                              onPressed: () {},
                              child: const Text(
                                'Enviar',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                ),
                              )),
                        ),
                      ),
                    ],
                  ),
                  const Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      TelaInicial(),
                    ],
                  ),
                ])),
          ),
        ));
  }
}
