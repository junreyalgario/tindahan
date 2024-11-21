// ignore_for_file: use_build_context_synchronously
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tienda_pos/core/constant/app_colors.dart';
import 'package:tienda_pos/core/constant/ui.dart';
import 'package:tienda_pos/core/state/data_state.dart';
import 'package:tienda_pos/core/styles/button_custom_styles.dart';
import 'package:tienda_pos/core/styles/text_field_styles.dart';
import 'package:tienda_pos/core/widgets/dialog.dart';
import 'package:tienda_pos/core/widgets/snackbar.dart';
import 'package:tienda_pos/feature/inventory/domain/entities/category/category_entity.dart';
import 'package:tienda_pos/feature/inventory/presentation/view_models/category/category_notifier.dart';

class CategoryForm extends ConsumerStatefulWidget {
  const CategoryForm({
    super.key,
    this.categoryEntity = const CategoryEntity(),
    this.onSuccess,
    this.onDelete,
  });

  final CategoryEntity? categoryEntity;
  final Function(CategoryEntity? category)? onSuccess;
  final Function()? onDelete;

  @override
  ConsumerState<CategoryForm> createState() => _CategoryFormState();
}

class _CategoryFormState extends ConsumerState<CategoryForm> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();

  @override
  void initState() {
    super.initState();

    SchedulerBinding.instance.addPostFrameCallback((_) {
      if (widget.categoryEntity?.id != null) {
        ref
            .watch(categoryNortifierProvider.notifier)
            .setCategory(widget.categoryEntity!);

        nameController.text = widget.categoryEntity!.name!;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final categoryNotifier = ref.watch(categoryNortifierProvider.notifier);
    final categoryState = ref.watch(categoryNortifierProvider);

    return Padding(
      padding: UI.dialog_padding,
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 20),
            const Text(
              'Product Category',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
            ),
            const SizedBox(height: 30),
            SizedBox(
              height: 75,
              child: TextFormField(
                controller: nameController,
                decoration: TextFieldStyles.decoration2(
                  InputDecoration(
                    suffixIcon: widget.categoryEntity?.id != null
                        ? IconButton(
                            icon: const Icon(Icons.delete),
                            color: AppColors.danger,
                            onPressed: () {
                              showConfirmDialog(
                                context: context,
                                title: categoryState.name,
                                confirmText: 'Delete',
                                confirmColor: AppColors.danger,
                                message:
                                    'Confirm delete? This action cannot be undone.',
                                onConfirm: () async {
                                  final DataState result =
                                      await categoryNotifier.delete();
                                  if (result.isSuccess) {
                                    if (widget.onDelete != null) {
                                      widget.onDelete!();
                                    }
                                    Navigator.of(context).pop();
                                    showTopSnackbar(
                                        context: context,
                                        color: AppColors.success,
                                        message:
                                            'Category deleted successfully.');
                                  } else {
                                    showTopSnackbar(
                                        context: context,
                                        color: AppColors.danger,
                                        message: result.error!);
                                  }
                                },
                              );
                            },
                          )
                        : null,
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return '';
                  }
                  return null;
                },
                onChanged: (value) {
                  categoryNotifier.setCategoryName(value);
                },
              ),
            ),
            const SizedBox(height: 20),
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
                Expanded(
                  child: ElevatedButton(
                    style: ButtonCustomStyles.elevatedStyle(
                      backgroundColor: AppColors.confirm,
                    ),
                    onPressed: () async {
                      if (_formKey.currentState?.validate() ?? false) {
                        final dataState = await categoryNotifier.saveCategory();

                        if (dataState.isSuccess) {
                          if (widget.onSuccess != null) {
                            widget.onSuccess!(categoryState.id != null
                                ? categoryState
                                : null);
                          }

                          showTopSnackbar(
                              context: context,
                              color: AppColors.success,
                              message: 'Category saved successfully!');

                          Navigator.pop(context);
                        } else {
                          showTopSnackbar(
                              context: context,
                              color: AppColors.error,
                              message: 'Failed to save category.');
                        }
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
