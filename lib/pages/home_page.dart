import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sidebarx/sidebarx.dart';
import 'package:storage_control/pages/dashboard.dart';
import 'package:storage_control/pages/estoque/lista_itens_page.dart';
import 'package:storage_control/pages/listar_quartos_page.dart';

import '../classes/classes.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget telaSelecionada = const SizedBox();
  PageController pages = PageController();

  int indexSelected = 0;

  bool isCollapsed = false;

  @override
  Widget build(BuildContext context) {
    double largura = MediaQuery.of(context).size.width;
    double altura = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: AppBar(
          backgroundColor: Cores.preto,
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
            controller: SidebarXController(
              selectedIndex: indexSelected,
              extended: !isCollapsed,
            ),
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
                height: 120,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  // child: Image.asset('images/avatar.png'),
                  child: Column(
                    children: [
                      const FlutterLogo(size: 40),
                      const SizedBox(height: 10),
                      !isCollapsed
                          ? const Text(
                              'Storage Control',
                              style: TextStyle(
                                color: Cores.branco,
                                fontSize: 20,
                              ),
                            )
                          : Container()
                    ],
                  ),
                ),
              );
            },
            items: [
              SidebarXItem(
                icon: Icons.home,
                label: 'Home',
                onTap: () {
                  pages.jumpToPage(0);
                },
              ),
              SidebarXItem(
                icon: CupertinoIcons.cube_box_fill,
                label: 'Estoque',
                onTap: () {
                  pages.jumpToPage(1);
                },
              ),
              SidebarXItem(
                icon: CupertinoIcons.bed_double_fill,
                label: 'Quartos',
                onTap: () {
                  pages.jumpToPage(2);
                },
              ),
              // const SidebarXItem(
              //     iconWidget: FlutterLogo(size: 20), label: 'Flutter'),
            ],
          ),
          Container(
            decoration: const BoxDecoration(
              color: Cores.brancoEscuro,
            ),
            width: MediaQuery.of(context).size.width - 200,
            height: MediaQuery.of(context).size.height,
            // child: telaSelecionada,
            child: PageView(
              controller: pages,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                DashBoard(page: pages, index: indexSelected),
                ListaItensPage(),
                ListarQuartosPage(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
