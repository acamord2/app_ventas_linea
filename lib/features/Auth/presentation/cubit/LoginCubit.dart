import 'package:clientes_app/core/constants/AppTexts.dart';
import 'package:clientes_app/features/Auth/data/datasources/UsuariosFekeDataSource.dart';
import 'package:clientes_app/features/Auth/presentation/cubit/LoginState.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<Loginstate> {
  final Usuariosfekedatasource dataSource;

  LoginCubit({required this.dataSource}) : super(const Loginstate());

  void cambiarCorreo(String correo) {
    emit(state.copyWith(correo: correo));
  }

  void cambiarPass(String pass) {
    emit(state.copyWith(pass: pass));
  }

  Future<void> iniciarSesion() async {
    final correo = state.correo;
    final pass = state.pass;

    if (correo.isEmpty || pass.isEmpty) {
      emit(
        state.copyWith(
          estatus: LoginStatus.error,
          mensajeError: AppTexts.errorCamposVasios,
        ),
      );
      return;
    }

    emit(state.copyWith(estatus: LoginStatus.cargando));

    //Simular llamda de -API-
    await Future.delayed(const Duration(seconds: 1));

    final usuario = dataSource.validarUsuario(correo: correo, pass: pass);
    if (usuario == null) {
      emit(
        state.copyWith(
          estatus: LoginStatus.error,
          mensajeError: AppTexts.ingresoIncorrecto,
        ),
      );
      return;
    }
    emit(state.copyWith(estatus: LoginStatus.exito, usuario: usuario));
  }
}
