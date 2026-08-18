import 'package:clientes_app/features/perfil/presentation/widgets/OpcionCliente.dart';
import 'package:clientes_app/features/perfil/presentation/widgets/PresentacionCliente.dart';
import 'package:clientes_app/features/perfil/presentation/widgets/bottonCerrarSesion.dart';
import 'package:flutter/material.dart';

class UsuarioCard extends StatefulWidget {
  const UsuarioCard({super.key});

  @override
  State<UsuarioCard> createState() => _UsuarioCardState();
}

class _UsuarioCardState extends State<UsuarioCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PresentacionCliente(),
        OpcionCliente(),
        BottonCerrarAesion()
      ],
    );
  }
}