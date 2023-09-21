import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:storage_control/animations/loading_animation.dart';

class ListarQuartosPage extends StatefulWidget {
  const ListarQuartosPage({super.key});

  @override
  State<ListarQuartosPage> createState() => _ListarQuartosPageState();
}

class _ListarQuartosPageState extends State<ListarQuartosPage> {
  @override
  Widget build(BuildContext context) {
    return const Center(child: LoadingAnimation());
  }
}
