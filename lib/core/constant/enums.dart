enum ProductFilter {
  all,
  archived,
}

enum ProductUnit {
  piece,
  scale,
  length,
}

extension ProductUnitExtension on ProductUnit {
  String get value {
    switch (this) {
      case ProductUnit.piece:
        return "Piece";
      case ProductUnit.scale:
        return "Scale";
      case ProductUnit.length:
        return "Length";
    }
  }
}
