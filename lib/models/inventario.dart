import 'dart:convert';

Inventario userFromJson(String str) => Inventario.fromJson(json.decode(str));

String userToJson(Inventario data) => json.encode(data.toJson());

class Inventario{

  int cantidad_existente;
  //int idUsuario;
  String descripcion;
  int id_inventario;
  int id_producto;
  String nombreproducto;
  int precio;
  String talla;
  //DocumentReference reference;

 Inventario(
      {this.cantidad_existente,
      //this.idUsuario,
      this.descripcion,
      this.id_inventario,
      this.id_producto,
      this.nombreproducto,
      this.precio,
      this.talla});

  factory Inventario.fromJson(Map<String, dynamic> json) {
    return Inventario(
      cantidad_existente: json['cantidad_existente'],
      //idUsuario: json['idUsuarios'],
      descripcion: json['descripcion'],
      id_inventario: json['id_inventario'],
      id_producto: json['id_producto'],
      nombreproducto: json['nombreproducto'],
      precio: json['precio'],
      talla: json['talla'],
    );
  }

   Map<String, dynamic> toJson() => {
        "cantidad_existente": cantidad_existente,
        "descripcion": descripcion,
        "id_inventario": id_inventario,
        "id_producto": id_producto,
        "nombreproducto": nombreproducto,
        "precio": precio,
        "talla": talla
      };

  Map<String, dynamic> toMap() {
    return {
      "cantidad_existente": cantidad_existente,
        "descripcion": descripcion,
        "id_inventario": id_inventario,
        "id_producto": id_producto,
        "nombreproducto": nombreproducto,
        "precio": precio,
        "talla": talla
    };
  }
}