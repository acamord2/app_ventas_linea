import 'package:clientes_app/core/constants/AppTexts.dart';
import 'package:clientes_app/core/constants/AppTextStyles.dart';
import 'package:clientes_app/features/Auth/presentation/cubit/LoginCubit.dart';
import 'package:clientes_app/features/Auth/presentation/widgets/TextFormFieldLogin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginSeccion extends StatefulWidget {
  final bool esPass;

  const LoginSeccion({super.key, required this.esPass});

  @override
  State<LoginSeccion> createState() => _LoginSeccionState();
}

class _LoginSeccionState extends State<LoginSeccion> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            ((widget.esPass) ? AppTexts.passLogin : AppTexts.userLogin)
                .toUpperCase(),
            style: AppTextStyles.bodyBold,
          ),

          const SizedBox(height: 8),

          TextformfieldLogin(
            esPass: widget.esPass,
            onChanged: (valor) => widget.esPass
                ? context.read<LoginCubit>().cambiarPass(valor)
                : context.read<LoginCubit>().cambiarCorreo(valor),
          ),

          if (widget.esPass) ...[
            const SizedBox(height: 8),

            Align(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                onTap: () {},
                child: Text(
                  AppTexts.forgotPassLogin,
                  style: AppTextStyles.labelUnderline,
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }
}
