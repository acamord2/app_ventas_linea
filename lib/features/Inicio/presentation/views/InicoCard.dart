import 'package:clientes_app/features/Inicio/presentation/widgets/ContenedorPrincipal.dart';
import 'package:clientes_app/features/Inicio/presentation/widgets/OpcionesCategorias/CategoriasContent.dart';
import 'package:clientes_app/features/Inicio/presentation/widgets/Trayectoria/Trayectoria.dart';
import 'package:flutter/material.dart';

class InicoCard extends StatelessWidget {
  const InicoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ScrollConfiguration(
          behavior: const MaterialScrollBehavior().copyWith(
            overscroll: false,
          ),
          child: SingleChildScrollView(
            physics: const ClampingScrollPhysics(),
            child: Column(
              children: const [
                ContenedorPrincipal(contenidoSeccion: Trayectoria()),
                ContenedorPrincipal(contenidoSeccion: CategoriasContent()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
