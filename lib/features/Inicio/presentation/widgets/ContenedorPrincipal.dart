import 'package:clientes_app/core/constants/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ContenedorPrincipal extends StatelessWidget {
  final Widget contenidoSeccion;
  final bool compacto;
  final bool isPadding;
  const ContenedorPrincipal({
    super.key,
    required this.contenidoSeccion,
    this.compacto = false,
    this.isPadding = false,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final double anchoPantalla = MediaQuery.sizeOf(context).width;

        final double ancho = compacto
            ? 160
            : constraints.maxWidth.isFinite
            ? constraints.maxWidth - 32
            : anchoPantalla - 32;

        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: Container(
            width: ancho,
            padding: isPadding
              ? EdgeInsets.zero
              : EdgeInsets.symmetric(
              horizontal: compacto ? 10 : 16,
              vertical: compacto ? 10 : 18,
            ),
            decoration: BoxDecoration(
              color: const Color(0xFFF7F7F5),
              borderRadius: BorderRadius.circular(16),
              border: Border.all(
                color: AppColors.background.withOpacity(0.3),
                width: 1.5,
              ),
            ),
            child: contenidoSeccion,
          ),
        );
      },
    );
  }
}
