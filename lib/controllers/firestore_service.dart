import 'package:app_estacion_moda/models/inventario.dart';
import 'package:app_estacion_moda/models/usuario.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  var _dbEstacionModa = FirebaseFirestore.instance;

  // Get Usuarios

  Stream<List<Usuario>> getUsuarios() {
    return _dbEstacionModa.collection('Usuario').snapshots().map((snapshot) =>
        snapshot.docs.map((doc) => Usuario.fromJson(doc.data())).toList());
  }
  Stream<List<Inventario>> getInventario() {
    return _dbEstacionModa.collection('Inventario').snapshots().map((snapshot) =>
        snapshot.docs.map((doc) => Inventario.fromJson(doc.data())).toList());
  }

  Future<void> setUsuario(Usuario user) async {
    //var options = SetOptions(merge: true);
    print(user.toMap().toString());
    print(user.toMap().isEmpty);

    var usuarioRecibido =
        await _dbEstacionModa.collection('Usuario').add(user.toMap());
    print(usuarioRecibido.id);

    /*return _dbEstacionModa
        .collection('Usuario')
        .doc(user.idUserFirebase)
        .set(user.toMap());
        */
  }

  Future<void> setInventario(Inventario inventario) async {
    //var options = SetOptions(merge: true);
    print(inventario.toMap().toString());
    print(inventario.toMap().isEmpty);

    var InventarioRecibido =
        await _dbEstacionModa.collection('Inventario').add(inventario.toMap());
    print(inventario.id_inventario);
  }

  Future<void> removeUsuario(String userId) {
    return _dbEstacionModa.collection('Usuario').doc(userId).delete();
  }
  Future<void> removeInventario(String inventarioId) {
    return _dbEstacionModa.collection('Inventario').doc(inventarioId).delete(); // Aqui va igual que los valores de la BD firebase
  }
}