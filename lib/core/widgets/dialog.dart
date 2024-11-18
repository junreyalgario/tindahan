import 'package:flutter/material.dart';
import 'package:tienda_pos/core/constant/app_colors.dart';
import 'package:tienda_pos/core/constant/ui.dart';
import 'package:tienda_pos/core/styles/button_custom_styles.dart';

void showConfirmDialog({
  required BuildContext context,
  required String message,
  required String confirmText,
  Color? confirmColor = AppColors.confirm,
  required VoidCallback onConfirm,
}) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        elevation: 10.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: Container(
          width: 200,
          padding: UI.dialog_padding,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 20),
              Text(
                message,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 30),
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
                        backgroundColor: confirmColor!,
                      ),
                      onPressed: () async {
                        Navigator.of(context).pop();
                        onConfirm();
                      },
                      child: Text(
                        confirmText,
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      );
    },
  );
}
