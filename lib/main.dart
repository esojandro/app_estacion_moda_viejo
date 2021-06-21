import 'package:app_estacion_moda/controllers/usuario_controller.dart';
import 'package:app_estacion_moda/pages/food.dart';
import 'package:app_estacion_moda/pages/login.dart';
import 'package:app_estacion_moda/pages/registro.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:app_estacion_moda/pages/principal.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'package:app_estacion_moda/routes/my_routes.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider<UsuarioController>(
            create: (_) => UsuarioController())
      ],
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/principal',
        navigatorKey: Get.key,
        home: PrincipalPage(),
        getPages: [
          GetPage(name: '/principal', page: () => PrincipalPage()),
          GetPage(name: '/registro_page', page: () => RegistroPage()),
          GetPage(name: '/login_page', page: () => LoginPage()),
          GetPage(
              name: '/foodpage',
              page: () => FoodPage(),
              transition: Transition.zoom),
        ],
      )));
}

//MyApp());

/*
class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (BuildContext context) {
          if (true) {
            return PrincipalPage();
          } else {
            return LoginPage();
          }
        }
      },
    );
  }
}
*/
