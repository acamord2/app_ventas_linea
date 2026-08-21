class UsuarioModel {
  final int id;
  final String nombre;
  final String correo;
  final String pass;

  const UsuarioModel(
    {
      required this.id,
      required this.nombre,
      required this.correo,
      required this.pass,
    }
  );
}
