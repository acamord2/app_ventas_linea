import 'package:clientes_app/core/constants/AppColors.dart';
import 'package:clientes_app/core/constants/AppTextStyles.dart';
import 'package:clientes_app/core/constants/AppTexts.dart';
import 'package:clientes_app/features/Auth/presentation/cubit/LoginCubit.dart';
import 'package:clientes_app/routes/AppRoutes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class ButtonsLogin extends StatefulWidget {
  final bool isAcces;
  const ButtonsLogin({super.key, required this.isAcces});

  @override
  State<ButtonsLogin> createState() => _ButtonsLoginState();
}

class _ButtonsLoginState extends State<ButtonsLogin> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        onPressed: () {
          (widget.isAcces)
              ? context.read<LoginCubit>().iniciarSesion()
              : context.go(AppRoutes.crearCuenta);
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: widget.isAcces
              ? AppColors.tertiaryDark
              : AppColors.background,
          foregroundColor: widget.isAcces
              ? AppColors.tertiaryLight
              : AppColors.background,
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          side: BorderSide(
            color: widget.isAcces ? AppColors.tertiaryDark : AppColors.overlay,
            width: 1.5,
          ),
        ),
        child: Text(
          (widget.isAcces ? AppTexts.loginButton : AppTexts.registerNow)
              .toUpperCase(),
          style: widget.isAcces
              ? AppTextStyles.buttonSecondary
              : AppTextStyles.button,
        ),
      ),
    );
  }
}
