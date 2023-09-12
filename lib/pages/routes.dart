import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:storage_control/classes/globais.dart';

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
    // FirebaseAuth.instance.authStateChanges().listen((User? user) {
    //   if (user == null) {
    //     logar();
    //   } else {
    //     deslogar();
    //   }
    // });
  }

  deslogar() async {
    await FirebaseAuth.instance.signOut();
    Navigator.pushReplacementNamed(context, '/login');
  }

  logar() {
    Navigator.pushReplacementNamed(context, '/home');
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
