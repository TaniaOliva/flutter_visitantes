// lib/screens/visitor_list_screen.dart
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class VisitorListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Visitantes'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Lista de visitantes'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navegar a la pantalla para agregar un nuevo visitante
                context.go(
                    '/visitorForm/'); // Navega a la pantalla de formulario de visitante
              },
              child: Text('Agregar Visitante'),
            ),
          ],
        ),
      ),
    );
  }
}
