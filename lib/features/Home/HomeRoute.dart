import 'package:clientes_app/features/Home/presentation/views/HomeLayoutMain.dart';
import 'package:clientes_app/routes/AppRoutes.dart';
import 'package:go_router/go_router.dart';

class HomeRoute {
  static final ruta = [
    GoRoute(
      path: AppRoutes.home,
      builder: (context, state) {
        return const HomeLayoutMain();
      },
    ),
  ];
}
