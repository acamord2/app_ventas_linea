import 'package:flutter_bloc/flutter_bloc.dart';

class MenuCubit extends Cubit<int> {
  MenuCubit() : super(0);

  int get indexSeleccionada => state;

  void cambiarPagina(int index) {
    emit(index);
  }
}