import 'package:clientes_app/core/constants/AppStrings.dart';
import 'package:clientes_app/features/perfil/presentation/widgets/ListTitleCliente.dart';
import 'package:flutter/material.dart';

class OpcionCliente extends StatelessWidget {
  const OpcionCliente({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.all(16),
      children: [
        OpcionList(
          icono: Icons.person_outline_rounded,
          onTapAccion: () {},
          titulo: AppStrings.editarInfo,
        ),
        OpcionList(
          icono: Icons.location_on_outlined,
          titulo: "Mis Direcciones",
          onTapAccion: () {},
        ),
        OpcionList(
          icono: Icons.credit_card_outlined, 
          titulo: "Métodos de Pago",
          onTapAccion: () {},
        ),
        OpcionList(
          icono: Icons.inventory_2_outlined,
          titulo: "Mis Pedidos",
          onTapAccion: () {},
        ),
        OpcionList(
          icono: Icons.settings_outlined,
          titulo: "Ajustes",
          onTapAccion: () {},
        ),
      ],
    );
  }
}
