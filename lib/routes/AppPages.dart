import 'package:clientes_app/features/Auth/AuthRoute.dart';
import 'package:clientes_app/features/CrearCliente/CrearClienteRoute.dart';
import 'package:clientes_app/features/Home/HomeRoute.dart';

class Apppages {
  static final rutas = [
    ...Authroute.ruta,
    ...HomeRoute.ruta,
    ...CrearClienteRoute.ruta,
  ];
}
