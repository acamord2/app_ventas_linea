import 'package:clientes_app/core/constants/AppTextStyles.dart';
import 'package:clientes_app/core/constants/AppStrings.dart';
import 'package:flutter/material.dart';

class InfoCompraCategoria extends StatelessWidget {
  const InfoCompraCategoria({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(AppStrings.categoriaText, style: AppTextStyles.title),
        SizedBox(height: 2),
        Text(AppStrings.descCategoria, style: AppTextStyles.label,),
      ],
    );
  }
}
