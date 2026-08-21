import 'package:clientes_app/features/Auth/presentation/views/LoginMain.dart';
import 'package:clientes_app/routes/AppRoutes.dart';
import 'package:go_router/go_router.dart';

class Authroute {
  static final ruta = [
    GoRoute(
      path: AppRoutes.login,
      builder: (context, state) {
        return const LoginMain();
      },
    ),
  ];
}
