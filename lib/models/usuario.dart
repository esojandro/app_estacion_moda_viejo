//import 'package: cloud_firestore/cloud_firestore.dart';
import 'dart:convert';

Usuario userFromJson(String str) => Usuario.fromJson(json.decode(str));

String userToJson(Usuario data) => json.encode(data.toJson());

class Usuario {
  String idUserFirebase;
  //int idUsuario;
  String usuario;
  String correo;
  String contrasena;
  //DocumentReference reference;

  Usuario(
      {this.idUserFirebase,
      //this.idUsuario,
      this.usuario,
      this.correo,
      this.contrasena});

  factory Usuario.fromJson(Map<String, dynamic> json) {
    return Usuario(
      idUserFirebase: json['idUserFirebase'],
      //idUsuario: json['idUsuarios'],
      usuario: json['usuario'],
      correo: json['correo'],
      contrasena: json['contrasena'],
    );
  }

  Map<String, dynamic> toJson() => {
        "idUserFirebase": idUserFirebase,
        "usuario": usuario,
        "correo": correo,
        "contrasena": contrasena
      };

  Map<String, dynamic> toMap() {
    return {
      'idUserFirebase': idUserFirebase,
      //'idUsuarios': idUsuario,
      'usuario': usuario,
      'correo': correo,
      'contrasena': contrasena
    };
  }

  /*static const String collectionId = 'Usuario';
  Usuario({
    this.idUsuario,
    this.usuario,
    this.correo,
    this.contrasena,
  });
*/
  /*Usuario.fromSnapshot(String idUsuario, Map<String, dynamic> usuarioM)
      : idUsuario = int.tryParse(idUsuario),
        usuario = usuarioM['usuarios'] as String,
        correo = usuarioM['correos'] as String,
        contrasena = usuarioM['contrasenas'] as String;

  Map<String, dynamyc> toMap() => {
      'usuarios': usuario,
      'correo': correo,
      'contrasenas': contrasena,


    }
    */

}
