import 'package:clientes_app/core/constants/AppTextStyles.dart';
import 'package:clientes_app/core/constants/AppStrings.dart';
import 'package:flutter/material.dart';

class InfoTrayectoria extends StatelessWidget {
  const InfoTrayectoria({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(AppStrings.tituloTrayectoria, style: AppTextStyles.title),
        SizedBox(height: 2),
        Text(AppStrings.descTrayectoria, style: AppTextStyles.label,),
      ],
    );
  }
}
