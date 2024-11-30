// lib/services/visitor_service.dart

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_visitantes/models/visitor.dart';

class VisitorService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;
  final String _collection = 'VISITANTE';

  // Crear un nuevo visitante
  Future<void> addVisitor(Visitor visitor) async {
    try {
      await _db.collection(_collection).add(visitor.toMap());
    } catch (e) {
      print('Error al agregar visitante: $e');
    }
  }

  // Leer todos los visitantes
  Stream<List<Visitor>> getVisitors() {
    return _db.collection(_collection).snapshots().map((querySnapshot) {
      return querySnapshot.docs.map((doc) {
        return Visitor.fromMap(doc.data() as Map<String, dynamic>, doc.id);
      }).toList();
    });
  }

  // Actualizar un visitante
  Future<void> updateVisitor(String id, Visitor visitor) async {
    try {
      await _db.collection(_collection).doc(id).update(visitor.toMap());
    } catch (e) {
      print('Error al actualizar visitante: $e');
    }
  }

  // Eliminar un visitante
  Future<void> deleteVisitor(String id) async {
    try {
      await _db.collection(_collection).doc(id).delete();
    } catch (e) {
      print('Error al eliminar visitante: $e');
    }
  }
}
