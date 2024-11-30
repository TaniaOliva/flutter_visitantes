import 'package:flutter/material.dart';

class VisitorScreen extends StatelessWidget {
  final String? visitorId;

  const VisitorScreen({Key? key, this.visitorId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Aquí puedes usar visitorId
    return Scaffold(
      appBar: AppBar(title: Text('Visitante: $visitorId')),
      body: Center(child: Text('Información del visitante')),
    );
  }
}
