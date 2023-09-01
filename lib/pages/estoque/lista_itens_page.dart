import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:storage_control/classes/classes.dart';
import 'package:storage_control/widgets/widgets.dart';

class ListaItensPage extends StatefulWidget {
  const ListaItensPage({super.key});

  @override
  State<ListaItensPage> createState() => _ListaItensPageState();
}

class _ListaItensPageState extends State<ListaItensPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Cores.brancoEscuro,
      ),
      child: Column(
        children: [
          const Center(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Text(
                'Estoque',
                style: TextStyle(
                  color: Cores.preto,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Cores.verde,
                    fixedSize: const Size(180, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        CupertinoIcons.add_circled,
                        color: Cores.branco,
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Novo',
                        style: TextStyle(
                          color: Cores.branco,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.all(15),
            decoration: const BoxDecoration(
                color: Cores.cinza,
                borderRadius: BorderRadius.all(Radius.circular(10))),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.75,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: GridView.count(
                crossAxisCount: 5,
                crossAxisSpacing: 5,
                children: const [
                  CardItemEstoque(),
                  CardItemEstoque(),
                  CardItemEstoque(),
                  CardItemEstoque(),
                  CardItemEstoque(),
                  CardItemEstoque(),
                  CardItemEstoque(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
