import 'package:clientes_app/core/constants/AppTextStyles.dart';
import 'package:clientes_app/core/constants/AppTexts.dart';
import 'package:flutter/material.dart';

class InfoCompraCategoria extends StatelessWidget {
  const InfoCompraCategoria({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(AppTexts.aceptar, style: AppTextStyles.title),
        SizedBox(height: 2),
        Text(AppTexts.aceptar, style: AppTextStyles.label,),
      ],
    );
  }
}
