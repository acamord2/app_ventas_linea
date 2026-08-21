import 'package:clientes_app/features/Auth/data/models/UsuarioModel.dart';

enum LoginStatus { inicial, cargando, exito, error }

class Loginstate {
  final String correo;
  final String pass;

  final LoginStatus estatus;

  final String? mensajeError;
  final UsuarioModel? usuario;

  const Loginstate({
    this.correo = '',
    this.pass = '',
    this.estatus = LoginStatus.inicial,
    this.mensajeError,
    this.usuario,
  });

  Loginstate copyWith({
    String? correo,
    String? pass,
    LoginStatus? estatus,
    String? mensajeError,
    UsuarioModel? usuario,
  }) {
    return Loginstate(
      correo: correo ?? this.correo,
      pass: pass ?? this.pass,
      estatus: estatus ?? this.estatus,
      mensajeError: mensajeError,
      usuario: usuario ?? this.usuario,
    );
  }
}
