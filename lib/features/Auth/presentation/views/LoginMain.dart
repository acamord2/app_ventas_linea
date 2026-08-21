import 'dart:ui';

import 'package:clientes_app/core/constants/AppAssetsRoute.dart';
import 'package:clientes_app/features/Auth/data/datasources/UsuariosFekeDataSource.dart';
import 'package:clientes_app/features/Auth/presentation/cubit/LoginCubit.dart';
import 'package:clientes_app/features/Auth/presentation/cubit/LoginState.dart';
import 'package:clientes_app/features/Auth/presentation/views/LoginContainer.dart';
import 'package:clientes_app/routes/AppRoutes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class LoginMain extends StatelessWidget {
  const LoginMain({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => LoginCubit(dataSource: Usuariosfekedatasource()),

      child: BlocListener<LoginCubit, Loginstate>(
        listener: (context, estatus) {
          if (estatus.estatus == LoginStatus.exito) {
            context.go(AppRoutes.home);
          }
        },
        child: Scaffold(
          body: Stack(
            children: [
              Positioned.fill(
                child: Image.asset(
                  AppAssetsRoute.imageLoginFondo,
                  fit: BoxFit.cover,
                ),
              ),

              Positioned.fill(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                  child: Container(color: Colors.black.withOpacity(0.01)),
                ),
              ),
              const LoginContainer(),
            ],
          ),
        ),
      ),
    );
  }
}
