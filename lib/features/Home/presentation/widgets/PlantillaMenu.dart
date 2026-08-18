import 'package:clientes_app/core/constants/AppStrings.dart';
import 'package:clientes_app/features/Inicio/presentation/views/InicoCard.dart';
import 'package:clientes_app/features/perfil/presentation/views/UsuarioCard.dart';
import 'package:flutter/material.dart';

class PlantillaMenuHome{

  static const List<Widget> paginas = const [
    Center(child: InicoCard()),
    Center(child: Text(AppStrings.tienda)),
    Center(child: Text(AppStrings.carrito)),
    Center(child: UsuarioCard()),
  ];
}