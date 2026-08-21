import 'package:clientes_app/core/constants/AppColors.dart';
import 'package:clientes_app/core/constants/AppTextStyles.dart';
import 'package:clientes_app/core/constants/AppTexts.dart';
import 'package:flutter/material.dart';

class BottonComprar extends StatefulWidget {
  const BottonComprar({super.key});

  @override
  State<BottonComprar> createState() => _BottonComprarState();
}

class _BottonComprarState extends State<BottonComprar> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        onPressed: () {
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary,
          foregroundColor: AppColors.surface,
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(14),
          ),
        ),
        child: Text(
          AppTexts.aceptar,
          style: AppTextStyles.button,
        ),
      ),
    );
  }
}
