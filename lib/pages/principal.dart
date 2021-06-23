import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_builder.dart';
import 'package:get/get.dart';

class PrincipalPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/fondo.jpg'), fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        /* Esto elimina la barra de arriba que dice principal
        appBar: AppBar(
          backgroundColor: Colors.grey.shade300,
          title: Text(
            "Principal",
            style: TextStyle(fontSize: 15, color: Colors.black),
          ),
        ),
        */        
        body: Column(
          children: [
            Divider(
                  height: 75,
                  thickness: 0,
                ),
            CircleAvatar(
                maxRadius: 140,
                backgroundImage: AssetImage('assets/EstaciónModa.png')),
            SizedBox(
              height: 5,
            ),
            SizedBox(
              height: 40,
            ),
            Divider(
              height: 5,
            ),
            Container(
              child: SignInButtonBuilder(
                icon: Icons.person_add,
                backgroundColor: Colors.blueAccent,
                text: 'Registrarse',
                onPressed: () => Get.toNamed('/registro_page'),
              ),
              padding: const EdgeInsets.all(16),
              alignment: Alignment.center,
            ),
            Container(
              child: SignInButtonBuilder(
                icon: Icons.verified_user,
                backgroundColor: Colors.pink.shade300,
                text: 'Login',
                onPressed: () => Get.toNamed('/login_page'),
              ),
              padding: const EdgeInsets.all(16),
              alignment: Alignment.center,
            ),
          ],
        ),
      ),
    );
  }
}
