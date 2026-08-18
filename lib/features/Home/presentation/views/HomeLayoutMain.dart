import 'package:clientes_app/features/Home/presentation/cubit/indexMenu.dart';
import 'package:clientes_app/features/Home/presentation/views/AppBarHome.dart';
import 'package:clientes_app/features/Home/presentation/views/NavBarHome.dart';
import 'package:clientes_app/features/Home/presentation/widgets/PlantillaMenu.dart';
import 'package:clientes_app/features/Inicio/presentation/views/InicoCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeLayoutMain extends StatefulWidget {
  const HomeLayoutMain({super.key});

  @override
  State<HomeLayoutMain> createState() => _HomeLayoutMainState();
}

class _HomeLayoutMainState extends State<HomeLayoutMain> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<MenuCubit>(
      create: (_) => MenuCubit(),
      child: Scaffold(
        appBar: AppbarHome(
          //showNotification: false,
          onBagPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const InicoCard()),
            );
          },
          onMenuPressed: () {
            Scaffold.of(context).openDrawer();
          },
          onSearchPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const InicoCard()),
            );
          },
        ),
        body: BlocBuilder<MenuCubit, int>(
          builder: (context, indexSeleccionada) {
            return PlantillaMenuHome.paginas[indexSeleccionada];
          },
        ),

        bottomNavigationBar: const NavbarHome(),
      ),
    );
  }
}
