import 'package:google_maps_flutter/google_maps_flutter.dart';

// Esta clase debe generar un objeto que contenga la información de un POI devuelto por el modelo LLM: Gemini
class PointOfInterest {
  final LatLng gps;
  final String name;
  final String? description;
  final String? url;
  final String? imageUrl;
  final double? rating;

  PointOfInterest({
    required this.gps,
    required this.name,
    this.description,
    this.url,
    this.imageUrl,
    this.rating,
  });
}
