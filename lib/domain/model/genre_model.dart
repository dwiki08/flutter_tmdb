import 'package:flutter/foundation.dart';

@immutable
class Genre {
  final int id;
  final String name;

  const Genre({required this.id, required this.name});
}
