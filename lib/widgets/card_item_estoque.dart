import 'package:flutter/material.dart';

import '../classes/classes.dart';

class CardItemEstoque extends StatelessWidget {
  const CardItemEstoque({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Cores.branco,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 5,
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(15),
            width: MediaQuery.of(context).size.width,
            height: 180,
            decoration: BoxDecoration(
              // color: Cores.cinza,
              borderRadius: BorderRadius.circular(12),
            ),
            child: const FlutterLogo(size: 40),
          ),
          Row(
            children: [
              const SizedBox(width: 15),
              const Text(
                "Nome do Item",
                style: TextStyle(
                  fontSize: 20,
                  color: Cores.preto,
                ),
              ),
              Expanded(child: Container()),
              const SizedBox(width: 15),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              const SizedBox(width: 15),
              const Text(
                "Qtd. Estoque:",
                style: TextStyle(fontSize: 15, color: Cores.preto),
              ),
              Expanded(child: Container()),
              const Text(
                "10",
                style: TextStyle(fontSize: 15, color: Cores.preto),
              ),
              const SizedBox(width: 15),
            ],
          ),
          Row(
            children: [
              const SizedBox(width: 15),
              const Text(
                "Valor unitário:",
                style: TextStyle(fontSize: 15, color: Cores.preto),
              ),
              Expanded(child: Container()),
              const Text(
                "R\$ 100,00",
                style: TextStyle(fontSize: 15, color: Cores.preto),
              ),
              const SizedBox(width: 15),
            ],
          ),
        ],
      ),
    );
  }
}
