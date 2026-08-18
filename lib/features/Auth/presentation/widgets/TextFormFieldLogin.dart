import 'package:clientes_app/core/constants/AppColors.dart';
import 'package:clientes_app/core/constants/AppTextStyles.dart';
import 'package:clientes_app/core/constants/AppStrings.dart';
import 'package:flutter/material.dart';

class TextformfieldLogin extends StatefulWidget {
  final bool esPass;
  const TextformfieldLogin({super.key, required this.esPass});

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
      obscureText: widget.esPass ? _obscureText : false,
      keyboardType: (widget.esPass)
          ? TextInputType.visiblePassword
          : TextInputType.emailAddress,
      style: AppTextStyles.subtitle,
      decoration: InputDecoration(
        hintStyle: AppTextStyles.body,
        hintText: (widget.esPass)
            ? AppStrings.hintTextPassLogin
            : AppStrings.hintTextUserLogin,
        filled: true,
        fillColor: Colors.white,
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
                  color: Colors.grey,
                ),
              )
            : null,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          //borderSide: const BorderSide(color: Colors.black, width: 1.5),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: const BorderSide(color: AppColors.textPrimary, width: 2.0),
        ),
      ),
    );
  }
}
