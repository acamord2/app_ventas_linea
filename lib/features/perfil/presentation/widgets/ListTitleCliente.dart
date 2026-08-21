import 'package:clientes_app/core/constants/AppTextStyles.dart';
import 'package:clientes_app/core/constants/AppColors.dart';
import 'package:flutter/material.dart';

class OpcionList extends StatelessWidget {
  final IconData icono;
  final String titulo;
  final VoidCallback onTapAccion;
  const OpcionList({super.key, required this.icono, required this.onTapAccion, required this.titulo});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: AppColors.background,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(color: AppColors.textPrimary.withOpacity(0.3), blurRadius: 6, offset: Offset(0, 5)),
        ],
      ),

      child: Material(
        color: Colors.transparent,
        child: ListTile(
          onTap: onTapAccion,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8,
          ),
          leading: Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              color: AppColors.divider,
              shape: BoxShape.circle,
            ),
            child: Icon(icono, color: AppColors.textPrimary,size: 22,),
          ),
          title: Text(titulo, style: AppTextStyles.subtitle),
          trailing: Icon(
            Icons.arrow_forward_ios_rounded,
            size: 16,
            color: AppColors.border,
          ),
        ),
      ),
    );
  }
}
