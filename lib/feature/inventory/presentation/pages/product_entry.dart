import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tienda_pos/core/constant/app_colors.dart';
import 'package:tienda_pos/core/constant/ui.dart';
import 'package:tienda_pos/core/styles/text_field_styles.dart';
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
      title: 'Product Details',
      child: SingleChildScrollView(
        padding: UI.page_padding,
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              ..._buildPhotoSection(),
              const SizedBox(height: 10),
              ..._buildDetailSection(),
            ],
          ),
        ),
      ),
    );
  }

  _buildPhotoSection() {
    return [
      Stack(
        clipBehavior: Clip.none,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.network(
              'https://fastly.picsum.photos/id/217/200/200.jpg?hmac=LoNAUhfCfURrqYjw6WECEWybn4B8y37k5G2odewlZ_Y',
              width: 220,
              height: 220,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            right: 5,
            top: 5,
            child: Container(
              width: 40,
              height: 40,
              decoration: const BoxDecoration(
                color: Color.fromARGB(66, 0, 0, 0),
                shape: BoxShape.circle,
              ),
              child: IconButton(
                iconSize: 20,
                color: Colors.white,
                icon: const Icon(Icons.close),
                onPressed: () {
                  //
                },
              ),
            ),
          ),
        ],
      ),
      const SizedBox(height: 5),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            iconSize: 40,
            color: AppColors.secondary,
            icon: const Icon(Icons.photo),
            onPressed: () {
              //
            },
          ),
          IconButton(
            iconSize: 40,
            color: AppColors.secondary,
            icon: const Icon(Icons.camera_alt),
            onPressed: () {
              //
            },
          ),
        ],
      )
    ];
  }

  _buildDetailSection() {
    return [
      // Row(
      //   children: [
      //     Expanded(
      //       child: DropdownButtonFormField<String>(
      //         decoration: InputDecoration(
      //           border: OutlineInputBorder(),
      //           suffixIcon: IconButton(
      //             icon: const Icon(Icons.add),
      //             onPressed: () {
      //               // Search
      //             },
      //           ),
      //         ),
      //         hint: const Text('Category'),
      //         items: ['Grains', 'Dairy', 'Condiments'].map((String item) {
      //           return DropdownMenuItem<String>(
      //             value: item,
      //             child: Text(item),
      //           );
      //         }).toList(),
      //         onChanged: (String? value) {
      //           setState(() {
      //             // Handle selection
      //           });
      //         },
      //       ),
      //     ),
      //     const SizedBox(width: 20),
      //     Expanded(
      //       child: DropdownButtonFormField<String>(
      //         decoration: const InputDecoration(
      //           border: OutlineInputBorder(),
      //         ),
      //         hint: const Text('Unit of Measure'),
      //         items: ['Grains', 'Dairy', 'Condiments'].map((String item) {
      //           return DropdownMenuItem<String>(
      //             value: item,
      //             child: Text(item),
      //           );
      //         }).toList(),
      //         onChanged: (String? value) {
      //           setState(() {
      //             // Handle selection
      //           });
      //         },
      //       ),
      //     ),
      //   ],
      // ),
      DropdownButtonFormField<String>(
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          suffixIcon: IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              // Search
            },
          ),
        ),
        hint: const Text('Category'),
        items: ['Grains', 'Dairy', 'Condiments'].map((String item) {
          return DropdownMenuItem<String>(
            value: item,
            child: Text(item),
          );
        }).toList(),
        onChanged: (String? value) {
          //
        },
      ),
      const SizedBox(height: 20),
      TextFormField(
        decoration: TextFieldStyles.decoration(
            TextFormFieldDecoration(labelText: 'Product name')),
      ),
      const SizedBox(height: 20),
      Row(
        children: [
          Expanded(
            child: TextFormField(
              keyboardType:
                  const TextInputType.numberWithOptions(decimal: true),
              decoration: TextFieldStyles.decoration(
                  TextFormFieldDecoration(labelText: 'Price')),
            ),
          ),
          const SizedBox(width: 20),
          Expanded(
            child: TextFormField(
              keyboardType:
                  const TextInputType.numberWithOptions(decimal: true),
              decoration: TextFieldStyles.decoration(
                TextFormFieldDecoration(labelText: 'Cost'),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a number';
                }
                if (int.tryParse(value) == null) {
                  return 'Please enter a valid number';
                }
                return null;
              },
            ),
          ),
        ],
      ),
    ];
  }
}
