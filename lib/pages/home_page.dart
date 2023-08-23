import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sidebarx/sidebarx.dart';

import '../classes/classes.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget telaSelecionada = const SizedBox();

  @override
  Widget build(BuildContext context) {
    double largura = MediaQuery.of(context).size.width;
    double altura = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: AppBar(
          backgroundColor: Cores.vermelho,
          title: const Text('Home Page'),
          centerTitle: true,
          actions: [
            // IconButton(
            //   icon: const Icon(Icons.add),
            //   onPressed: () {
            //     Navigator.pushNamed(context, '/cadastro');
            //   },
            // ),
            GestureDetector(
              onTap: () {},
              child: Row(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    child: Container(
                      width: 200,
                      decoration: BoxDecoration(
                        color: Cores.branco,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            child: Container(
                              width: 50,
                              height: MediaQuery.of(context).size.height,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Cores.cinza,
                              ),
                              child: const Icon(
                                Icons.person,
                                color: Cores.branco,
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          const Text(
                            "Fulano",
                            style: TextStyle(
                              fontSize: 20,
                              color: Cores.preto,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: Row(
        children: [
          SidebarX(
            // footerItems: [
            //   SidebarXItem(
            //     icon: Icons.logout,
            //     label: 'Sair',
            //     onTap: () {
            //       Navigator.pushNamed(context, '/login');
            //     },
            //   ),
            // ],
            controller: SidebarXController(selectedIndex: 0, extended: true),
            theme: SidebarXTheme(
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Cores.preto,
                borderRadius: BorderRadius.circular(20),
              ),
              hoverTextStyle: const TextStyle(color: Cores.branco),
              textStyle: TextStyle(
                color: Colors.white.withOpacity(0.7),
              ),
              selectedTextStyle: const TextStyle(color: Colors.white),
              itemTextPadding: const EdgeInsets.only(left: 30),
              selectedItemTextPadding: const EdgeInsets.only(left: 30),
              itemDecoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Cores.transparente),
              ),
              selectedItemDecoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Cores.branco.withOpacity(0.37),
                ),
                gradient: const LinearGradient(
                  colors: [Cores.preto, Cores.vermelhoClaro],
                ),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.28), blurRadius: 30)
                ],
              ),
              iconTheme:
                  IconThemeData(color: Colors.white.withOpacity(0.7), size: 20),
              selectedIconTheme:
                  const IconThemeData(color: Colors.white, size: 20),
            ),
            extendedTheme: const SidebarXTheme(
              width: 200,
              decoration: BoxDecoration(color: Cores.preto),
            ),
            footerDivider: const Divider(color: Colors.white, thickness: 1),
            headerBuilder: (context, extended) {
              return SizedBox(
                height: 100,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Image.asset('assets/images/avatar.png'),
                ),
              );
            },
            items: [
              SidebarXItem(
                icon: Icons.home,
                label: 'Home',
                onTap: () {
                  debugPrint('Home');
                },
              ),
              SidebarXItem(
                icon: CupertinoIcons.cube_box_fill,
                label: 'Estoque',
                onTap: () {
                  telaSelecionada = const Text('Estoque');
                },
              ),
              // const SidebarXItem(icon: Icons.people, label: 'Conta'),
              const SidebarXItem(
                  iconWidget: FlutterLogo(size: 20), label: 'Flutter'),
            ],
          ),
          Container(
            decoration: const BoxDecoration(
              color: Cores.brancoEscuro,
            ),
            width: MediaQuery.of(context).size.width - 200,
            height: MediaQuery.of(context).size.height,
            child: telaSelecionada,
          ),
        ],
      ),
    );
  }
}
