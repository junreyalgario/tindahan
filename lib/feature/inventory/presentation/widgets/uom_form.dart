// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tienda_pos/core/constant/app_colors.dart';
import 'package:tienda_pos/core/constant/enums.dart';
import 'package:tienda_pos/core/constant/ui.dart';
import 'package:tienda_pos/core/state/data_state.dart';
import 'package:tienda_pos/core/styles/button_custom_styles.dart';
import 'package:tienda_pos/core/styles/text_field_styles.dart';
import 'package:tienda_pos/core/widgets/dialog.dart';
import 'package:tienda_pos/core/widgets/snackbar.dart';
import 'package:tienda_pos/feature/inventory/domain/entities/uom/uom_entity.dart';
import 'package:tienda_pos/feature/inventory/presentation/view_models/uom/uom_notifier.dart';

class OumForm extends ConsumerStatefulWidget {
  const OumForm({
    super.key,
    required this.uomEntity,
    this.onSuccess,
    this.onDelete,
  });

  final UomEntity? uomEntity;
  final Function(UomEntity? uomEntity)? onSuccess;
  final VoidCallback? onDelete;

  @override
  ConsumerState<OumForm> createState() => _OumFormState();
}

class _OumFormState extends ConsumerState<OumForm> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController symbolController = TextEditingController();
  ProductUnit? _productUnit;

  bool get _isNewUom => widget.uomEntity?.id == null;

  @override
  void initState() {
    super.initState();

    SchedulerBinding.instance.addPostFrameCallback((_) {
      if (widget.uomEntity?.id != null) {
        ref.watch(uomNotifierProvider.notifier).setState(widget.uomEntity!);

        nameController.text = widget.uomEntity!.name!;
        symbolController.text = widget.uomEntity!.symbol!;
        setState(() {
          _productUnit = ref
              .read(uomNotifierProvider.notifier)
              .resolveProductUnit(widget.uomEntity!.uom!);
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final uomNotifier = ref.watch(uomNotifierProvider.notifier);
    final uomState = ref.watch(uomNotifierProvider);

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
                controller: nameController,
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
                  uomNotifier.setName(value);
                },
              ),
            ),
            // Symbol of measure
            SizedBox(
              height: UI.need_validation_field_height,
              child: TextFormField(
                controller: symbolController,
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
                  uomNotifier.setSymbol(value);
                },
              ),
            ),
            // Unit
            SizedBox(
              height: UI.need_validation_field_height,
              child: DropdownButtonFormField<ProductUnit>(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                ),
                hint: const Text('Unit of measure'),
                value: _productUnit,
                items: [
                  ProductUnit.piece,
                  ProductUnit.scale,
                  ProductUnit.length
                ].map((ProductUnit productUnit) {
                  return DropdownMenuItem<ProductUnit>(
                    value: productUnit,
                    child: Text(productUnit.value),
                  );
                }).toList(),
                validator: (value) {
                  if (value == null) {
                    return '';
                  }
                  return null;
                },
                onChanged: (ProductUnit? unit) {
                  if (unit != null) {
                    uomNotifier.setUom(unit.value);
                  }
                },
              ),
            ),
            // Action buttons
            _isNewUom
                ? Container()
                : Align(
                    alignment: Alignment.centerRight,
                    child: TextButton.icon(
                      onPressed: () {
                        showConfirmDialog(
                            context: context,
                            title:
                                '${widget.uomEntity?.name!} (${widget.uomEntity?.symbol!})',
                            message:
                                'Confirm delete? This action cannot be undone.',
                            confirmText: 'CONFIRM',
                            confirmColor: AppColors.danger,
                            onConfirm: () async {
                              final DataState result =
                                  await uomNotifier.delete();
                              if (result.isSuccess) {
                                if (widget.onDelete != null) {
                                  widget.onDelete!();
                                }
                                Navigator.of(context).pop();
                                showTopSnackbar(
                                    context: context,
                                    color: AppColors.success,
                                    message: 'Uom deleted successfully.');
                              } else {
                                showTopSnackbar(
                                    context: context,
                                    color: AppColors.danger,
                                    message: result.error!);
                              }
                            });
                      },
                      // icon: Icon(Icons.delete),
                      label: const Text('DELETE'),
                      style: TextButton.styleFrom(
                        foregroundColor: AppColors.danger,
                        textStyle: const TextStyle(fontWeight: FontWeight.bold),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                    ),
                  ),
            const SizedBox(height: 10),
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
                      'CANCEL',
                      style: TextStyle(color: AppColors.confirm),
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
                        final dataState = await uomNotifier.save();

                        if (dataState.isSuccess) {
                          widget.onSuccess!(
                              uomState.id != null ? uomState : null);

                          showTopSnackbar(
                              context: context,
                              color: AppColors.success,
                              message: 'Uom saved successfully!');

                          Navigator.pop(context);
                        } else {
                          showTopSnackbar(
                              context: context,
                              color: AppColors.error,
                              message: 'Failed to save uom.');
                        }
                      }
                    },
                    child: const Text(
                      'SAVE',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
