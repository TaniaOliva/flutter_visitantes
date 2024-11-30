// lib/providers/visitor_provider.dart

import 'package:flutter/material.dart';
import 'package:flutter_visitantes/models/visitor.dart';
import 'package:flutter_visitantes/services/visitor_service.dart';

class VisitorProvider extends ChangeNotifier {
  final VisitorService _visitorService = VisitorService();

  Stream<List<Visitor>> getVisitors() {
    return _visitorService.getVisitors();
  }

  Future<void> addVisitor(Visitor visitor) async {
    await _visitorService.addVisitor(visitor);
    notifyListeners();
  }

  Future<void> updateVisitor(String id, Visitor visitor) async {
    await _visitorService.updateVisitor(id, visitor);
    notifyListeners();
  }

  Future<void> deleteVisitor(String id) async {
    await _visitorService.deleteVisitor(id);
    notifyListeners();
  }
}
