import 'package:clientes_app/core/constants/AppColors.dart';
import 'package:clientes_app/core/constants/AppTexts.dart';
import 'package:clientes_app/core/constants/AppTextStyles.dart';
import 'package:clientes_app/features/Inicio/data/models/TrayectoriasList.dart';
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
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: List.generate(TrayectoriasList.trayectorias.length, (index) {
              return Padding(
                padding: EdgeInsets.only(
                  right: index == TrayectoriasList.trayectorias.length - 1 ? 0 : 8,
                ),
                child: CardTrallectoria(
                  icono: TrayectoriasList.trayectorias[index].icono,
                  body: TrayectoriasList.trayectorias[index].body,
                  subtitulo: TrayectoriasList.trayectorias[index].subtitulo,
                  titulo: TrayectoriasList.trayectorias[index].titulo,
                ),
              );
            }),
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
                  text: AppTexts.aceptar,
                  style: AppTextStyles.bodyBold,
                ),
                TextSpan(text: AppTexts.aceptar),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
