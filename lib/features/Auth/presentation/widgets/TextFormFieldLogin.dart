import 'package:clientes_app/core/constants/AppColors.dart';
import 'package:clientes_app/core/constants/AppTextStyles.dart';
import 'package:clientes_app/core/constants/AppTexts.dart';
import 'package:flutter/material.dart';

class TextformfieldLogin extends StatefulWidget {
  final bool esPass;
  final ValueChanged<String>? onChanged;

  const TextformfieldLogin({super.key, required this.esPass, this.onChanged});

  @override
  State<TextformfieldLogin> createState() => _TextformfieldLoginState();
}

class _TextformfieldLoginState extends State<TextformfieldLogin> {
  late bool _obscureText;
  @override
  void initState() {
    super.initState();
    _obscureText = widget.esPass;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: widget.onChanged,
      obscureText: widget.esPass ? _obscureText : false,
      keyboardType: (widget.esPass)
          ? TextInputType.visiblePassword
          : TextInputType.emailAddress,
      style: AppTextStyles.subtitle,
      decoration: InputDecoration(
        hintStyle: AppTextStyles.disabled,
        hintText: (widget.esPass) ? AppTexts.passwordHint : AppTexts.userHint,
        prefixIcon: Icon((widget.esPass)
            ? Icons.lock_outline
            : Icons.mail_outline,
            color: AppColors.disabledIcon,),
        filled: true,
        fillColor: AppColors.background,
        suffixIcon: widget.esPass
            ? IconButton(
                onPressed: () {
                  setState(() {
                    _obscureText = !_obscureText;
                  });
                },
                icon: Icon(
                  _obscureText
                      ? Icons.visibility_outlined
                      : Icons.visibility_off_outlined,
                  color: AppColors.textOnPrimary,
                ),
              )
            : null,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          //borderSide: const BorderSide(color: Colors.black, width: 1.5),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
            color: AppColors.textPrimary,
            width: 2.0,
          ),
        ),
      ),
    );
  }
}
