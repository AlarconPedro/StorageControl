import 'package:flutter/material.dart';
import 'package:storage_control/classes/globais.dart';
import 'package:go_router/go_router.dart';
import 'package:storage_control/pages/home_page.dart';
import 'package:storage_control/pages/quartos/listar_quartos_page.dart';
import 'package:storage_control/pages/login_page.dart';

class Routes extends StatefulWidget {
  const Routes({super.key});

  @override
  State<Routes> createState() => _RoutesState();
}

class _RoutesState extends State<Routes> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    verificaLogado();
  }

  verificaLogado() {
    if (Globais.logado) {
      logar();
    } else {
      deslogar();
    }
  }

  deslogar() async {
    // await FirebaseAuth.instance.signOut();
    context.go('/');
  }

  logar() {
    context.go('/home');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: _router,
    );
  }
}

final GoRouter _router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return Globais.logado ? const HomePage() : const LoginPage();
      },
    ),
    GoRoute(
      path: '/home',
      builder: (BuildContext context, GoRouterState state) {
        return const HomePage();
      },
    ),
    GoRoute(
      path: '/quartos',
      builder: (BuildContext context, GoRouterState state) {
        return const ListarQuartosPage();
      },
    ),
  ],
);
