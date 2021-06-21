import 'package:app_estacion_moda/pages/food.dart';
import 'package:app_estacion_moda/pages/login.dart';
import 'package:app_estacion_moda/pages/principal.dart';
import 'package:app_estacion_moda/pages/registro.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';

routes() {
  GetPage(name: '/principal', page: () => PrincipalPage());
  GetPage(name: '/registro_page', page: () => RegistroPage());
  GetPage(name: '/login_page', page: () => LoginPage());
  GetPage(
      name: '/foodpage', page: () => FoodPage(), transition: Transition.zoom);
}
