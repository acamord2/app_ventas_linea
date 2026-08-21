import 'package:clientes_app/core/constants/AppTextStyles.dart';
import 'package:clientes_app/core/constants/AppTexts.dart';
import 'package:flutter/material.dart';

class CrearRegistro extends StatefulWidget {
  const CrearRegistro({super.key});

  @override
  State<CrearRegistro> createState() => _CrearRegistroState();
}

class _CrearRegistroState extends State<CrearRegistro> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(AppTexts.aceptar, style: AppTextStyles.subtitle),
          GestureDetector(
            onTap: () {},
            child: Text(
              AppTexts.aceptar,
              style: AppTextStyles.body,
            ),
          ),
        ],
      ),
    );
  }
}
