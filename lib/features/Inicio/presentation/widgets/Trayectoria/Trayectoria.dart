import 'package:clientes_app/core/constants/AppColors.dart';
import 'package:clientes_app/core/constants/AppStrings.dart';
import 'package:clientes_app/core/constants/AppTextStyles.dart';
import 'package:clientes_app/features/Inicio/presentation/widgets/Trayectoria/InfoTrayectoria.dart';
import 'package:clientes_app/features/Inicio/presentation/widgets/Trayectoria/cardTrallectoria.dart';
import 'package:flutter/material.dart';

class Trayectoria extends StatelessWidget {
  const Trayectoria({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const InfoTrayectoria(),

        const SizedBox(height: 18),

        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          child: Row(
            children: [
              CardTrallectoria(
                icono: Icons.access_time_outlined,
                body: AppStrings.descExperiencia,
                subtitulo: AppStrings.tiempoExp,
                titulo: AppStrings.textExperiencia,
              ),

              const SizedBox(width: 14),

              CardTrallectoria(
                icono: Icons.storefront_outlined,
                body: AppStrings.descSucursales,
                subtitulo: AppStrings.tiendasFisicas,
                titulo: AppStrings.textSucursales,
              ),

              const SizedBox(width: 14),

              CardTrallectoria(
                icono: Icons.factory_outlined,
                body: AppStrings.descFabricacion,
                subtitulo: AppStrings.calidadControlada,
                titulo: AppStrings.textFabricacion,
              ),

              const SizedBox(width: 14),

              CardTrallectoria(
                icono: Icons.verified_user_outlined,
                body: AppStrings.descGarantia,
                subtitulo: AppStrings.compraSegura,
                titulo: AppStrings.textGarantia,
              ),
            ],
          ),
        ),

        const SizedBox(height: 16),

        const Divider(color: Color(0xFFE0E0E0), thickness: 1, height: 20),

        const SizedBox(height: 4),

        Center(
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              style: AppTextStyles.label,
              children: [
                TextSpan(
                  text: AppStrings.nombreEmpresa,
                  style: AppTextStyles.bodyBold,
                ),
                TextSpan(text: AppStrings.fotherTrayectoria),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
