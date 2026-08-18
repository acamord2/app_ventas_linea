import 'package:clientes_app/core/constants/AppColors.dart';
import 'package:clientes_app/core/constants/AppTextStyles.dart';
import 'package:clientes_app/core/constants/AppStrings.dart';
import 'package:clientes_app/features/Home/presentation/views/HomeLayoutMain.dart';
import 'package:flutter/material.dart';

class BottonLogin extends StatefulWidget {
  const BottonLogin({super.key});

  @override
  State<BottonLogin> createState() => _BottonLoginState();
}

class _BottonLoginState extends State<BottonLogin> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const HomeLayoutMain()),
          );
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
          AppStrings.bottonLogin,
          style: AppTextStyles.button,
        ),
      ),
    );
  }
}
