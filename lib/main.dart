import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

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
    return const MaterialApp(
      title: 'CCMZ',
      home: Routes(),
      debugShowCheckedModeBanner: false,
    );
  }
}
