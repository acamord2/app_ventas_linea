import 'package:clientes_app/core/constants/AppColors.dart';
import 'package:clientes_app/core/constants/AppTextStyles.dart';
import 'package:clientes_app/core/constants/AppTexts.dart';
import 'package:clientes_app/features/Auth/presentation/views/LoginMain.dart';
import 'package:flutter/material.dart';

class BottonCerrarAesion extends StatelessWidget {
  const BottonCerrarAesion({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: SizedBox(
        width: double.infinity,
        height: 60,
        child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginMain()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primary,
                foregroundColor: AppColors.background,
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(16),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.logout_rounded,size: 29,),
                  SizedBox(width: 10,),
                  Text(AppTexts.aceptar, style: AppTextStyles.button),
                ],
              ),
        ),
      ),
    );
  }
}
