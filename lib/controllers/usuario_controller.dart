import 'package:app_estacion_moda/controllers/firestore_service.dart';
import 'package:app_estacion_moda/models/usuario.dart';
import 'package:flutter/cupertino.dart';

class UsuarioController with ChangeNotifier {
  final firestoreService = FirestoreService();

  String idUserFirebase;
  //int idUsuario;
  String _usuario;
  String _correo;
  String _contrasena;

  // Getter Usuario
  String get usuarios => _usuario;
  String get correos => _correo;
  String get contrasenas => _contrasena;

  //Setters

  changeName(String value) {
    _usuario = value;
    print(_usuario);
    notifyListeners();
  }

  changeCorreo(String value) {
    _correo = value;
    print(_correo);
    notifyListeners();
  }

  changeContrasena(String value) {
    _contrasena = value;
    print(_contrasena);
    notifyListeners();
  }

  saveUsuario() {
    print("$_usuario, $_correo, $_contrasena");

    Usuario user = new Usuario();
    user.usuario = _usuario;
    user.correo = _correo;
    user.contrasena = _contrasena;
    print(user.correo);
    firestoreService.setUsuario(user);
  }
}
