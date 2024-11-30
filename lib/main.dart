// lib/main.dart
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_visitantes/router/app_router.dart'; // Importa el router

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(); // Inicializa Firebase
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router, // Conecta el router con MaterialApp
      title: 'Flutter Visitantes',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
