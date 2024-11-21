import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tienda_pos/core/constant/app_colors.dart';
import 'package:tienda_pos/core/constant/enums.dart';
import 'package:tienda_pos/core/constant/ui.dart';
import 'package:tienda_pos/core/styles/button_custom_styles.dart';
import 'package:tienda_pos/core/styles/text_field_styles.dart';
import 'package:tienda_pos/core/widgets/dialog.dart';

class OumForm extends ConsumerStatefulWidget {
  const OumForm({super.key, this.isNew = true});

  final bool isNew;

  @override
  ConsumerState<OumForm> createState() => _OumFormState();
}

class _OumFormState extends ConsumerState<OumForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: UI.dialog_padding,
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 20),
            const Text(
              'Unit of Measure',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
            ),
            const SizedBox(height: 30),
            // Name of measurement
            SizedBox(
              height: UI.need_validation_field_height,
              child: TextFormField(
                decoration: TextFieldStyles.decoration2(
                  const InputDecoration(
                    labelText: 'Name of measurement',
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return '';
                  }
                  return null;
                },
                onChanged: (value) {
                  //
                },
              ),
            ),
            // Symbol of measure
            SizedBox(
              height: UI.need_validation_field_height,
              child: TextFormField(
                decoration: TextFieldStyles.decoration2(
                  const InputDecoration(
                    labelText: 'Symbol of measure',
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return '';
                  }
                  return null;
                },
                onChanged: (value) {
                  //
                },
              ),
            ),
            // Unit
            DropdownButtonFormField<ProductUnit>(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
              ),
              hint: const Text('Unit of measure'),
              items: [ProductUnit.piece, ProductUnit.scale, ProductUnit.length]
                  .map((ProductUnit productUnit) {
                return DropdownMenuItem<ProductUnit>(
                  value: productUnit,
                  child: Text(productUnit.value),
                );
              }).toList(),
              onChanged: (ProductUnit? value) {
                //
              },
            ),
            const SizedBox(height: 20),
            // Action buttons
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    style: ButtonCustomStyles.elevatedStyle(
                      backgroundColor: AppColors.cancel,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text(
                      'Cancel',
                      style: TextStyle(color: AppColors.confirm),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                widget.isNew
                    ? Container()
                    : Expanded(
                        child: ElevatedButton(
                          style: ButtonCustomStyles.elevatedStyle(
                            backgroundColor: AppColors.danger,
                          ),
                          onPressed: () {
                            showConfirmDialog(
                                context: context,
                                message:
                                    'Confirm delete? This action cannot be undone.',
                                confirmText: 'Delete',
                                confirmColor: AppColors.danger,
                                onConfirm: () {
                                  //
                                });
                          },
                          child: const Text(
                            'Delete',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                const SizedBox(width: 10),
                Expanded(
                  child: ElevatedButton(
                    style: ButtonCustomStyles.elevatedStyle(
                      backgroundColor: AppColors.confirm,
                    ),
                    onPressed: () async {
                      if (_formKey.currentState?.validate() ?? false) {
                        //
                      }
                    },
                    child: const Text(
                      'Save',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
