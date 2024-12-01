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
      path: '/form',
      builder: (context, state) {
        final bool isEditing = state.extra != null && state.extra is bool
            ? state.extra as bool
            : false;
        final visitor = state.extra is Visitor
            ? state.extra as Visitor
            : null; // Pasar el visitante si está en la ruta
        return VisitorFormScreen(
            isEditing: isEditing,
            visitor: visitor); // Pasar isEditing y visitor
      },
    ),
  ],
);
