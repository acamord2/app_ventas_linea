import 'package:clientes_app/core/constants/AppTextStyles.dart';
import 'package:clientes_app/core/constants/AppColors.dart';
import 'package:flutter/material.dart';

class CategoriaCard extends StatelessWidget {
  final String texto;
  final String categoria;
  final VoidCallback? onTap;
  const CategoriaCard({super.key, required this.texto, required this.categoria, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Material(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(24),
          clipBehavior: Clip.antiAlias,
          child: InkWell(
            onTap: onTap,
            child: Container(
              width: 120.0,
              height: 120.0,
              decoration: BoxDecoration(
                color: AppColors.background,
                borderRadius: BorderRadius.circular(24),
                image: DecorationImage(
                  image: AssetImage(categoria),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 8.0),
        SizedBox(
          width: 120.0,
          child: Text(
            texto,
            textAlign: TextAlign.center,
            style: AppTextStyles.bodyBold,
          ),
        ),
      ],
    );
  }
}
