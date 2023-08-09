import 'package:flutter/material.dart';
import 'package:sidebarx/sidebarx.dart';

import '../classes/classes.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double largura = MediaQuery.of(context).size.width;
    double altura = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Cores.vermelho,
        title: const Text('Home Page'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              Navigator.pushNamed(context, '/cadastro');
            },
          ),
        ],
      ),
      body: SidebarX(
        controller: SidebarXController(selectedIndex: 0),
        theme: SidebarXTheme(
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Cores.preto, borderRadius: BorderRadius.circular(20)),
          hoverTextStyle: const TextStyle(color: Cores.branco),
          textStyle: TextStyle(color: Colors.white.withOpacity(0.7)),
          selectedTextStyle: const TextStyle(color: Colors.white),
          itemTextPadding: const EdgeInsets.only(left: 30),
          selectedItemTextPadding: const EdgeInsets.only(left: 30),
          itemDecoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Cores.transparente)),
          selectedItemDecoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Cores.branco.withOpacity(0.37)),
            gradient: const LinearGradient(
                colors: [Cores.preto, Cores.vermelhoClaro]),
            boxShadow: [
              BoxShadow(color: Colors.black.withOpacity(0.28), blurRadius: 30)
            ],
          ),
          iconTheme:
              IconThemeData(color: Colors.white.withOpacity(0.7), size: 20),
          selectedIconTheme: const IconThemeData(color: Colors.white, size: 20),
        ),
        extendedTheme: const SidebarXTheme(
            width: 200, decoration: BoxDecoration(color: Cores.preto)),
        footerDivider: const Divider(color: Colors.white, thickness: 1),
        headerBuilder: (context, extended) {
          return SizedBox(
              height: 100,
              child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Image.asset('assets/images/avatar.png')));
        },
        items: [
          SidebarXItem(
            icon: Icons.home,
            label: 'Home',
            onTap: () {
              debugPrint('Home');
            },
          ),
          const SidebarXItem(icon: Icons.search, label: 'Search'),
          const SidebarXItem(icon: Icons.people, label: 'People'),
          const SidebarXItem(icon: Icons.favorite, label: 'Favorites'),
          const SidebarXItem(
              iconWidget: FlutterLogo(size: 20), label: 'Flutter'),
        ],
      ),
    );
  }
}
