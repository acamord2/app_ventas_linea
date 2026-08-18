import 'package:clientes_app/core/constants/AppColors.dart';
import 'package:flutter/material.dart';

class ContenedorPrincipal extends StatefulWidget {
  final Widget contenidoSeccion;
  const ContenedorPrincipal({super.key, required this.contenidoSeccion});

  @override
  State<ContenedorPrincipal> createState() => _ContenedorPrincipalState();
}

class _ContenedorPrincipalState extends State<ContenedorPrincipal> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
        decoration: BoxDecoration(
          color: const Color(0xFFF7F7F5),
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: AppColors.textDisabled.withOpacity(0.3),
            width: 1.5,
          ),
        ),
        child: widget.contenidoSeccion,
      ),
    );
  }
}
