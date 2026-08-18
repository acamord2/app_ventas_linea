import 'dart:ui';

import 'package:clientes_app/core/constants/AppAssetsRoute.dart';
import 'package:clientes_app/features/Auth/presentation/views/LoginContainer.dart';
import 'package:flutter/material.dart';

class LoginMain extends StatefulWidget {
  const LoginMain({super.key});

  @override
  State<LoginMain> createState() => _LoginMainState();
}

class _LoginMainState extends State<LoginMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(AppAssetsRoute.imageLoginFondo, fit: BoxFit.cover),
          ),

          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
              child: Container(color: Colors.black.withOpacity(0.01)),
            ),
          ),
          LoginContainer(),
        ],
      ),
    );
  }
}
