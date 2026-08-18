import 'package:clientes_app/core/constants/AppTextStyles.dart';
import 'package:clientes_app/core/constants/AppColors.dart';
import 'package:flutter/material.dart';

class PresentacionCliente extends StatelessWidget {
  final String? urlImage;
  const PresentacionCliente({super.key, this.urlImage});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CircleAvatar(
          radius: 45,
          backgroundColor: AppColors.primary,
          backgroundImage: urlImage != null && urlImage!.isNotEmpty
              ? NetworkImage(urlImage!)
              : null,
          child: Icon(Icons.person, size: 90 ,color: AppColors.background,)
        ),
        SizedBox(height: 8),
        Text("Nombre Cliente", style: AppTextStyles.subtitle),
        Text("Membrecia", style: AppTextStyles.label),
      ],
    );
  }
}
