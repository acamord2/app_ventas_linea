import 'package:clientes_app/features/Auth/data/models/UsuarioModel.dart';

class Usuariosfekedatasource {
  static const List<UsuarioModel> usuarios = [
    UsuarioModel(id: 1, nombre: '123', correo: '123', pass: '123'),
    UsuarioModel(id: 1, nombre: '12345', correo: '12345', pass: '12345'),
    UsuarioModel(id: 1, nombre: '1234567', correo: '1234567', pass: '1234567'),
  ];
  UsuarioModel? validarUsuario({required String correo, required String pass}) {
    for (final usuario in usuarios) {
      if (usuario.correo.toLowerCase() == correo.toLowerCase() &&
          usuario.pass.toLowerCase() == pass.toLowerCase()) {
        return usuario;
      }
    }
    return null;
  }
}
