import 'package:clientes_app/routes/AppPages.dart';
import 'package:clientes_app/routes/AppRoutes.dart';
import 'package:go_router/go_router.dart';

final GoRouter appRura = GoRouter(
  routes: Apppages.rutas,
  initialLocation: AppRoutes.login,
);
