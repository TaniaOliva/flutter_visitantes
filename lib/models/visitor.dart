// lib/models/visitor.dart

class Visitor {
  final String id;
  final String name;
  final String reason;
  final String visitorTo;
  final String entryTime;
  final String exitTime;
  final String transportationMode;
  final String? companions; // Campo opcional para los acompañantes

  Visitor({
    required this.id,
    required this.name,
    required this.reason,
    required this.visitorTo,
    required this.entryTime,
    required this.exitTime,
    required this.transportationMode,
    this.companions,
  });

  // Convierte un visitante a un mapa para agregarlo a Firestore
  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'reason': reason,
      'visitorTo': visitorTo,
      'entryTime': entryTime,
      'exitTime': exitTime,
      'transportationMode': transportationMode,
      'companions': companions,
    };
  }

  // Convierte un mapa de Firestore a un objeto Visitor
  factory Visitor.fromMap(Map<String, dynamic> map, String id) {
    return Visitor(
      id: id,
      name: map['name'],
      reason: map['reason'],
      visitorTo: map['visitorTo'],
      entryTime: map['entryTime'],
      exitTime: map['exitTime'],
      transportationMode: map['transportationMode'],
      companions: map['companions'],
    );
  }
}
