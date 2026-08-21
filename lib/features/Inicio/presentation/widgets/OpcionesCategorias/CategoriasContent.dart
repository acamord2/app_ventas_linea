import 'package:clientes_app/features/Inicio/data/models/CategoriasList.dart';
import 'package:clientes_app/features/Inicio/presentation/widgets/ContenedorPrincipal.dart';
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
        const Padding(
          padding: EdgeInsets.only(top: 8, bottom: 16, left: 16, right: 16),
          child: InfoCompraCategoria(),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: List.generate(CategoriasList.categorias.length, (index) {
              return Padding(
                padding: EdgeInsets.only(
                  right: index == CategoriasList.categorias.length - 1 ? 0 : 8,
                ),
                child: ContenedorPrincipal(
                  isPadding: true,
                  compacto: true,
                  contenidoSeccion: CategoriaCard(
                    texto: CategoriasList.categorias[index].texto,
                    categoria: CategoriasList.categorias[index].imagen,
                    onTap: () {},
                  ),
                ),
              );
            }),
          ),
        ),
      ],
    );
  }
}