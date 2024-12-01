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
            Text('Aquí iría la lista de visitantes'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navegar a la pantalla del formulario de visitantes
                context.go('/form'); // Usa la ruta correcta '/form'
              },
              child: Text('Agregar Visitante'),
            ),
          ],
        ),
      ),
    );
  }
}
