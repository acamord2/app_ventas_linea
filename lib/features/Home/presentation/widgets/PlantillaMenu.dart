import 'package:clientes_app/core/constants/AppTexts.dart';
import 'package:clientes_app/features/Inicio/presentation/views/InicoCard.dart';
import 'package:clientes_app/features/perfil/presentation/views/UsuarioCard.dart';
import 'package:flutter/material.dart';

class PlantillaMenuHome{

  static const List<Widget> paginas = const [
    Center(child: InicoCard()),
    Center(child: Text(AppTexts.aceptar)),
    Center(child: Text(AppTexts.carrito)),
    Center(child: UsuarioCard()),
  ];
}