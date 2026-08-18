import 'package:clientes_app/core/constants/AppStrings.dart';
import 'package:clientes_app/core/constants/AppTextStyles.dart';
import 'package:clientes_app/features/Auth/presentation/widgets/TextFormFieldLogin.dart';
import 'package:flutter/material.dart';

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
          if (widget.esPass)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(AppStrings.passLogin, style: AppTextStyles.bodyBold),
                GestureDetector(
                  onTap: () {},
                  child: GestureDetector(
                    onTap: (){},
                    child: Text(
                      AppStrings.forgotPassLogin,
                      style: AppTextStyles.label,
                    ),
                  ),
                ),
              ],
            )
          else
            Text(AppStrings.userLogin, style: AppTextStyles.bodyBold),
          const SizedBox(height: 8),
          TextformfieldLogin(esPass: widget.esPass),
        ],
      ),
    );
  }
}
