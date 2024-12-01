// lib/screens/visitor_form_screen.dart
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class VisitorFormScreen extends StatefulWidget {
  final bool
      isEditing; // Para saber si estamos editando o creando un nuevo visitante
  final Visitor? visitor; // El visitante que estamos editando, si es el caso

  const VisitorFormScreen({required this.isEditing, this.visitor, Key? key})
      : super(key: key);

  @override
  _VisitorFormScreenState createState() => _VisitorFormScreenState();
}

class _VisitorFormScreenState extends State<VisitorFormScreen> {
  final _nameController = TextEditingController();
  final _identificationController = TextEditingController();
  final _reasonController = TextEditingController();
  final _visitToController = TextEditingController();
  final _entryTimeController = TextEditingController();
  final _exitTimeController = TextEditingController();
  final _transportController = TextEditingController();
  final _companionsController = TextEditingController();
  final _photoUrlController = TextEditingController(); // Para la URL de la foto

  @override
  void initState() {
    super.initState();

    if (widget.isEditing && widget.visitor != null) {
      // Si estamos editando, carga los datos del visitante
      _nameController.text = widget.visitor!.name;
      _identificationController.text = widget.visitor!.identification;
      _reasonController.text = widget.visitor!.reason;
      _visitToController.text = widget.visitor!.visitTo;
      _entryTimeController.text = widget.visitor!.entryTime;
      _exitTimeController.text = widget.visitor!.exitTime;
      _transportController.text = widget.visitor!.transport;
      _companionsController.text = widget.visitor!.companions ?? '';
      _photoUrlController.text = widget.visitor!.photoUrl ?? ''; // Foto URL
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.isEditing ? 'Editar Visitante' : 'Nuevo Visitante'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
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
                decoration: InputDecoration(labelText: 'Motivo de la Visita'),
              ),
              TextField(
                controller: _visitToController,
                decoration: InputDecoration(labelText: 'A Quién Visita'),
              ),
              TextField(
                controller: _entryTimeController,
                decoration: InputDecoration(labelText: 'Hora de Entrada'),
                keyboardType: TextInputType.datetime,
              ),
              TextField(
                controller: _exitTimeController,
                decoration: InputDecoration(labelText: 'Hora de Salida'),
                keyboardType: TextInputType.datetime,
              ),
              TextField(
                controller: _transportController,
                decoration: InputDecoration(labelText: 'Medio de Transporte'),
              ),
              TextField(
                controller: _companionsController,
                decoration: InputDecoration(labelText: 'Acompañantes'),
              ),
              TextField(
                controller: _photoUrlController,
                decoration:
                    InputDecoration(labelText: 'URL de la Foto (Opcional)'),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Aquí se guarda o actualiza el visitante
                  final visitor = Visitor(
                    name: _nameController.text,
                    identification: _identificationController.text,
                    reason: _reasonController.text,
                    visitTo: _visitToController.text,
                    entryTime: _entryTimeController.text,
                    exitTime: _exitTimeController.text,
                    transport: _transportController.text,
                    companions: _companionsController.text.isEmpty
                        ? null
                        : _companionsController.text,
                    photoUrl: _photoUrlController.text.isEmpty
                        ? null
                        : _photoUrlController.text,
                  );

                  if (widget.isEditing) {
                    // Si estamos editando, actualizamos el visitante
                    print('Visitante actualizado');
                  } else {
                    // Si estamos creando, guardamos un nuevo visitante
                    print('Visitante creado');
                  }

                  // Navegar a la lista de visitantes después de guardar
                  context.go('/'); // Regresar a la lista de visitantes
                },
                child: Text(widget.isEditing ? 'Actualizar' : 'Guardar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Visitor {
  final String name;
  final String identification;
  final String reason;
  final String visitTo;
  final String entryTime;
  final String exitTime;
  final String transport;
  final String? companions;
  final String? photoUrl;

  Visitor({
    required this.name,
    required this.identification,
    required this.reason,
    required this.visitTo,
    required this.entryTime,
    required this.exitTime,
    required this.transport,
    this.companions,
    this.photoUrl,
  });
}
