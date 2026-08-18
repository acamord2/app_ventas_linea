import 'package:clientes_app/core/constants/AppTextStyles.dart';
import 'package:clientes_app/core/constants/AppAssetsRoute.dart';
import 'package:clientes_app/core/constants/AppStrings.dart';
import 'package:clientes_app/features/Inicio/presentation/widgets/OpcionesCategorias/CategoriaCard.dart';
import 'package:clientes_app/features/Inicio/presentation/widgets/OpcionesCategorias/infoCompraCategoria.dart';
import 'package:flutter/material.dart';

class CategoriasContent extends StatefulWidget {
  const CategoriasContent({super.key});

  @override
  State<CategoriasContent> createState() => _CategoriasContentState();
}

class _CategoriasContentState extends State<CategoriasContent> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 8, bottom: 16),
          child: InfoCompraCategoria(),
        ),

        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: BouncingScrollPhysics(),
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: [
              CategoriaCard(
                texto: AppStrings.categoriaPromocion,
                categoria: AppAssetsRoute.categoriaUno,
                onTap: () {},
              ),
              SizedBox(width: 25),
              CategoriaCard(
                texto: AppStrings.categoriaUno,
                categoria: AppAssetsRoute.categoriaUno,
                onTap: () {},
              ),
              SizedBox(width: 25),
              CategoriaCard(
                texto: AppStrings.categoriaDos,
                categoria: AppAssetsRoute.categoriaUno,
                onTap: () {},
              ),
              SizedBox(width: 25),
              CategoriaCard(
                texto: AppStrings.categoriaTres,
                categoria: AppAssetsRoute.categoriaUno,
                onTap: () {},
              ),
              SizedBox(width: 25),
              CategoriaCard(
                texto: AppStrings.categoriaCuatro,
                categoria: AppAssetsRoute.categoriaUno,
                onTap: () {},
              ),
              SizedBox(width: 25),
              CategoriaCard(
                texto: AppStrings.categoriaCinco,
                categoria: AppAssetsRoute.categoriaUno,
                onTap: () {},
              ),
            ],
          ),
        ),
      ],
    );
  }
}
