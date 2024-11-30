// lib/router/app_router.dart
import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_visitantes/screens/visitor_list_screen.dart';
import 'package:flutter_visitantes/screens/visitor_form_screen.dart';

final GoRouter router = GoRouter(
  initialLocation: '/', // Ruta inicial
  routes: [
    // Ruta para la lista de visitantes
    GoRoute(
      path: '/',
      builder: (context, state) {
        return VisitorListScreen(); // Muestra la lista de visitantes
      },
    ),
    // Ruta para el formulario de visitantes (agregar o editar)
    GoRoute(
      path: '/visitorForm/:visitorId', // Con parámetro visitorId
      builder: (context, state) {
        final visitorId = state.pathParameters['visitorId'] ??
            ''; // Toma el visitorId de la URL
        return VisitorFormScreen(
            visitorId: visitorId, isEditing: visitorId.isNotEmpty);
      },
    ),
  ],
);
