import 'package:clientes_app/core/constants/AppTextStyles.dart';
import 'package:clientes_app/core/constants/AppColors.dart';
import 'package:clientes_app/features/Inicio/presentation/widgets/OpcionesCategorias/BottonComprar.dart';
import 'package:flutter/material.dart';

class CategoriaCard extends StatelessWidget {
  final String texto;
  final String categoria;
  final VoidCallback? onTap;
  const CategoriaCard({
    super.key,
    required this.texto,
    required this.categoria,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Material(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(2),
          clipBehavior: Clip.antiAlias,
          child: InkWell(
            onTap: onTap,
            child: Container(
              width: double.infinity,
              height: 130,
              decoration: BoxDecoration(
                color: AppColors.background,
                borderRadius: BorderRadius.circular(16),
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
            textAlign: TextAlign.start,
            style: AppTextStyles.bodyBold,
          ),
        ),
        SizedBox(height: 17,),
        SizedBox(child: BottonComprar()),
      ],
    );
  }
}
