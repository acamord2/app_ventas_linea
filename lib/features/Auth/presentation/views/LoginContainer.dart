import 'package:clientes_app/core/constants/AppColors.dart';
import 'package:clientes_app/features/Auth/presentation/views/LoginSeccion.dart';
import 'package:clientes_app/features/Auth/presentation/widgets/CrearRegistro.dart';
import 'package:clientes_app/features/Auth/presentation/widgets/TituloLogin.dart';
import 'package:clientes_app/features/Auth/presentation/widgets/bottonLogin.dart';
import 'package:flutter/material.dart';

class LoginContainer extends StatefulWidget {
  const LoginContainer({super.key});

  @override
  State<LoginContainer> createState() => _LoginContainerState();
}

class _LoginContainerState extends State<LoginContainer> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Center(
      child: SingleChildScrollView(
        child: Container(
          width: size.width * 0.85,
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: AppColors.surfaceContainer,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.5),
                blurRadius: 15,
                spreadRadius: 2,
                offset: const Offset(0, 8),
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              TituloLogin(),
              SizedBox(height: 30),
              LoginSeccion(esPass: false), // seccion User
              SizedBox(height: 16),
              LoginSeccion(esPass: true), // seccion password
              SizedBox(height: 25),
              BottonLogin(),
              SizedBox(height: 25),
              CrearRegistro(),
              SizedBox(height: 8),
            ],
          ),
        ),
      ),
    );
  }
}
