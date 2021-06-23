import 'package:app_estacion_moda/controllers/firestore_service.dart';
import 'package:app_estacion_moda/models/inventario.dart';
import 'package:flutter/cupertino.dart';

class InventarioController with ChangeNotifier {

final firestoreService = FirestoreService();

  int _cantidad_existente;
  //int idUsuario;
  String _descripcion;
  int _id_inventario;
  int _id_producto;
  String _nombreproducto;
  int _precio;
  String _talla;
  //DocumentReference reference;

  // Getter Usuario
  int get cantidad_existente => _cantidad_existente;
  String get descripcion => _descripcion;
  int get id_inventario => _id_inventario;
  int get id_producto => _id_producto;
  String get nombreproducto => _nombreproducto;
  int get precio => _precio;
  String get talla => _talla;

  changeCantidad(int value) {
    _cantidad_existente = value;
    print(_cantidad_existente);
    notifyListeners();
  }

  changeDescripcion(String value) {
    _descripcion = value;
    print(_descripcion);
    notifyListeners();
  }

  changeInventario(int value) {
    _id_inventario = value;
    print(_id_inventario);
    notifyListeners();
  }

  changeProducto(int value) {
    _id_producto = value;
    print(_id_producto);
    notifyListeners();
  }

  changeNombreProducto(String value) {
    _nombreproducto = value;
    print(_nombreproducto);
    notifyListeners();
  } 

  changePrecio(int value) {
    _precio = value;
    print(_precio);
    notifyListeners();
  } 

  changeTalla(String value) {
    _talla = value;
    print(_talla);
    notifyListeners();
  }  

  saveInventario() {
    print("$_cantidad_existente, $_descripcion, $_id_inventario, $_id_producto, $_nombreproducto, $_precio, $_talla");

    Inventario inventario = new Inventario();
    inventario.cantidad_existente = _cantidad_existente;
    inventario.descripcion = _descripcion;
    inventario.id_inventario = _id_inventario;
    inventario.id_producto = _id_producto;
    inventario.nombreproducto = _nombreproducto;
    inventario.precio = _precio;
    inventario.talla = _talla;
    print(inventario.nombreproducto);
    firestoreService.setInventario(inventario);
  }
}