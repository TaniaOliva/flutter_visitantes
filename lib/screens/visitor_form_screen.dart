// lib/screens/visitor_form_screen.dart
import 'package:flutter/material.dart';

class VisitorFormScreen extends StatefulWidget {
  final String visitorId;
  final bool isEditing;

  VisitorFormScreen({required this.visitorId, required this.isEditing});

  @override
  _VisitorFormScreenState createState() => _VisitorFormScreenState();
}

class _VisitorFormScreenState extends State<VisitorFormScreen> {
  final _nameController = TextEditingController();
  final _identificationController = TextEditingController();
  final _reasonController = TextEditingController();

  @override
  void initState() {
    super.initState();
    if (widget.isEditing) {
      // Aquí puedes cargar los datos del visitante si es una edición
      _nameController.text = "Visitante ${widget.visitorId}";
      _identificationController.text = "ID: ${widget.visitorId}";
      _reasonController.text = "Motivo de la visita";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            Text(widget.isEditing ? 'Editar Visitante' : 'Agregar Visitante'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: _nameController,
              decoration: InputDecoration(labelText: 'Nombre'),
            ),
            TextField(
              controller: _identificationController,
              decoration: InputDecoration(labelText: 'Identificación'),
            ),
            TextField(
              controller: _reasonController,
              decoration: InputDecoration(labelText: 'Motivo de la visita'),
            ),
            ElevatedButton(
              onPressed: () {
                if (widget.isEditing) {
                  // Actualizar visitante
                } else {
                  // Crear nuevo visitante
                }
                Navigator.pop(context); // Volver a la lista de visitantes
              },
              child: Text(widget.isEditing ? 'Actualizar' : 'Guardar'),
            ),
          ],
        ),
      ),
    );
  }
}
