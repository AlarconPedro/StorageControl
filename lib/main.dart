import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:storage_control/pages/home_page.dart';
import 'package:storage_control/pages/listar_quartos_page.dart';
import 'package:storage_control/pages/login_page.dart';
import 'package:storage_control/pages/routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'CCMZ',
        home: const Routes(),
        debugShowCheckedModeBanner: false,
        routes: {
          '\\': (context) => const Routes(),
          '/home': (context) => const HomePage(),
          '/login': (context) => const LoginPage(),
          '/quartos': (context) => const ListarQuartosPage(),
        });
  }
}
