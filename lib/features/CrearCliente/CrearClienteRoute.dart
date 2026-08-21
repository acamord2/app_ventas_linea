import 'package:clientes_app/features/CrearCliente/presentation/views/CreateClienteLayoutMain.dart';
import 'package:clientes_app/routes/AppRoutes.dart';
import 'package:go_router/go_router.dart';

class CrearClienteRoute {
  static final ruta = [
    GoRoute(
      path: AppRoutes.crearCuenta,
      builder: (context, state) {
        return const CreateClienteLayoutMain();
      },
    ),
  ];
}
