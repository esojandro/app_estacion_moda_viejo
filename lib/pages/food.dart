import 'package:app_estacion_moda/controllers/login.controller.dart';
//import 'package:app_estacion_moda/pages/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FoodPage extends StatelessWidget {
  final controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Food Network'),
        actions: <Widget>[
          Builder(builder: (BuildContext context) {
            return FlatButton(
              child: const Text('Login'),
              textColor: Theme.of(context).buttonColor,
              onPressed: () async {
                controller.signOut();

                /*ElevatedButton(
                onPressed: () => {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => LoginPage())),
                      //dispose()
                    },
                child: Text("Registrarse"));
                */
              },
            );
          })
        ],
      ),
      body: Center(
        child: Text('Food Page',
            style: new TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14.0,
                color: Colors.black)),
      ),
    );
  }
}
