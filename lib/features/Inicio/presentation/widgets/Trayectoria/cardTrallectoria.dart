import 'dart:math';

import 'package:clientes_app/core/constants/AppTextStyles.dart';
import 'package:clientes_app/core/constants/AppColors.dart';
import 'package:flutter/material.dart';

class CardTrallectoria extends StatefulWidget {
  final IconData icono;
  final String titulo;
  final String subtitulo;
  final String body;

  const CardTrallectoria({
    super.key,
    required this.icono,
    required this.body,
    required this.subtitulo,
    required this.titulo,
  });

  @override
  State<CardTrallectoria> createState() => _CardTrallectoriaState();
}

class _CardTrallectoriaState extends State<CardTrallectoria>
    with SingleTickerProviderStateMixin {
  // animacion de card 3d giratorio
  late AnimationController _controller;
  late Animation<double> _animation;
  bool _isFront = true;

  //inicio de animacion
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    );
    _animation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
  }

  void _flipCard() {
    if (_isFront) {
      _controller.forward();
    } else {
      _controller.reverse();
    }

    _isFront = !_isFront;
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _flipCard,
      child: AnimatedBuilder(
        animation: _animation,
        builder: (context, child) {
          final angle = _animation.value * pi;
          final inUnder = _animation.value > 0.5;

          return Transform(
            alignment: Alignment.center,
            transform: Matrix4.identity()
              ..setEntry(3, 2, 0.001) // perspectiva 3D
              ..rotateY(angle),
            child: inUnder
                ? Transform(
                    alignment: Alignment.center,
                    transform: Matrix4.identity()..rotateY(pi),
                    child: _buildCardContainer(child: _buildBackContent()),
                  )
                : _buildCardContainer(child: _buildFrontContent()),
          );
        },
      ),
    );
  }

  Widget _buildCardContainer({required Widget child}) {
    return Container(
      width: 165,
      height: 210,
      decoration: BoxDecoration(
        color: const Color(0xFFF7F7F5),
        borderRadius: BorderRadius.circular(14),
        border: Border.all(
          color: AppColors.textDisabled.withOpacity(0.3),
          width: 1.5,
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 16),
      child: child,
    );
  }

  Widget _buildFrontContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Align(
          alignment: Alignment.topCenter,
          child: Container(
            width: 42,
            height: 42,
            decoration: BoxDecoration(
              color: AppColors.primary,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(widget.icono, size: 24, color: AppColors.background),
          ),
        ),

        const SizedBox(height: 20),

        Expanded(
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  widget.titulo,
                  style: AppTextStyles.title,
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),

                const SizedBox(height: 8),

                Text(
                  widget.subtitulo,
                  style: AppTextStyles.subtitle,
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildBackContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Align(
          alignment: Alignment.topCenter,
          child: Container(
            width: 42,
            height: 42,
            decoration: BoxDecoration(
              color: AppColors.primary,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(widget.icono, size: 24, color: AppColors.background),
          ),
        ),

        const SizedBox(height: 20),

        Expanded(
          child: Center(
            child: Text(
              widget.body,
              style: AppTextStyles.body,
              textAlign: TextAlign.center,
              maxLines: 7,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
      ],
    );
  }
}
