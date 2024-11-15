import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tienda_pos/core/widgets/tienda_app.dart';

class ProductEntry extends ConsumerStatefulWidget {
  const ProductEntry({super.key});

  @override
  ConsumerState<ProductEntry> createState() => _ProductEntryState();
}

class _ProductEntryState extends ConsumerState<ProductEntry> {
  @override
  Widget build(BuildContext context) {
    return TiendaApp(
      child: Container(
        child: Text('PRODUCT ENTRY'),
      ),
    );
  }
}
