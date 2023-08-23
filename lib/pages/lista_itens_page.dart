import 'package:flutter/material.dart';
import 'package:storage_control/classes/classes.dart';

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
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Text(
                'Lista de Itens',
                style: TextStyle(
                  color: Cores.vermelho,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
