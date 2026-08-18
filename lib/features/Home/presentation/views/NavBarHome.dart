import 'package:clientes_app/core/constants/AppTextStyles.dart';
import 'package:clientes_app/core/constants/AppColors.dart';
import 'package:clientes_app/features/Home/presentation/cubit/indexMenu.dart';
import 'package:clientes_app/features/Home/presentation/widgets/ItemsNavBarHome.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NavbarHome extends StatelessWidget {
  const NavbarHome({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MenuCubit, int>(
      builder: (context, indexSeleccionada) {
        return ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(24),
            topRight: Radius.circular(24),
          ),
          child: NavigationBarTheme(
            data: NavigationBarThemeData(
              // Color de fondo de la cápsula/círculo del ítem seleccionado
              indicatorColor: AppColors.primary,
              
              // Estilo para íconos
              iconTheme: WidgetStateProperty.resolveWith((states) {
                if (states.contains(WidgetState.selected)) {
                  // Ícono seleccionado en color Blanco
                  return const IconThemeData(color: AppColors.navbarBackground, size: 25);
                }
                // Ícono deseleccionado
                return IconThemeData(color: AppColors.primary, size: 25);
              }),

              labelTextStyle: WidgetStateProperty.all(AppTextStyles.body),
            ),
            child: NavigationBar(
              height: 75,
              backgroundColor: AppColors.navbarBackground,
              selectedIndex: indexSeleccionada,
              // Muestra siempre el texto debajo del ícono
              labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
              onDestinationSelected: context.read<MenuCubit>().cambiarPagina,
              destinations: ItemsNavBarHome.destinations,
            ),
          ),
        );
      },
    );
  }
}