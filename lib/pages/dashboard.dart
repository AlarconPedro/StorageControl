import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:storage_control/classes/classes.dart';
import 'package:storage_control/pages/lista_itens_page.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        mainAxisSpacing: 5,
        crossAxisSpacing: 2,
        crossAxisCount: 4,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Card(
              elevation: 5,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.all(15),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.28,
                    decoration: const BoxDecoration(
                      color: Cores.preto,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: const Icon(
                      CupertinoIcons.cube_box_fill,
                      size: 60,
                      color: Cores.brancoEscuro,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text("Controle de Estoque"),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Card(
              elevation: 5,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.all(15),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.28,
                    decoration: const BoxDecoration(
                      color: Cores.preto,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: const Icon(
                      CupertinoIcons.bed_double_fill,
                      size: 60,
                      color: Cores.brancoEscuro,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text("Gerenciamento de Quartos"),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Card(
              elevation: 5,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.all(15),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.28,
                    decoration: const BoxDecoration(
                      color: Cores.preto,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: const Icon(
                      CupertinoIcons.cube_box_fill,
                      size: 60,
                      color: Cores.brancoEscuro,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text("Visitar"),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Card(
              elevation: 5,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.all(15),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.28,
                    decoration: const BoxDecoration(
                      color: Cores.preto,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: const Icon(
                      CupertinoIcons.cube_box_fill,
                      size: 60,
                      color: Cores.brancoEscuro,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text("Visitar"),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
