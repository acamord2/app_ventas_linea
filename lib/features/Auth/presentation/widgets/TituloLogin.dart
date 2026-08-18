import 'package:clientes_app/core/constants/AppAssetsRoute.dart';
import 'package:flutter/material.dart';

class TituloLogin extends StatefulWidget {
  const TituloLogin({super.key});

  @override
  State<TituloLogin> createState() => _TituloLoginState();
}

class _TituloLoginState extends State<TituloLogin> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        AppAssetsRoute.logoApp,
        width: 400,
        height: 70,
        fit: BoxFit.contain,
      ),
    );
  }
}
