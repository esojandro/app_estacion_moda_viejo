import 'package:app_estacion_moda/controllers/login.controller.dart';
import 'package:app_estacion_moda/pages/registro.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  final controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
          appBar: AppBar(
            title: Text(
              "Login",
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            backgroundColor: Colors.pink.shade300,
            actions: [],
          ),
          body: GetBuilder<LoginController>(
            init: LoginController(),
            builder: (_) {
              return SingleChildScrollView(
                child: Form(
                    key: controller.formKey,
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 40,
                            ),
                            Container(
                              child: const Text('Login Estación Moda',
                                  style: TextStyle(
                                      height: 5,
                                      fontSize: 25,
                                      color: Colors.black)),
                              alignment: Alignment.center,
                            ),
                            SizedBox(
                              height: 50,
                            ),
                            TextFormField(
                              controller: controller.emailController,
                              decoration: const InputDecoration(
                                  labelText: 'Email',
                                  border: OutlineInputBorder()),
                              validator: (String value) {
                                if (value.isEmpty)
                                  return 'Por favor ingrese sus datos';
                                return null;
                              },
                            ),
                            Divider(
                              height: 15,
                            ),
                            TextFormField(
                              controller: controller.passwordController,
                              keyboardType: TextInputType.text,
                              inputFormatters: <TextInputFormatter>[
                                FilteringTextInputFormatter.allow(
                                    RegExp(r'[a-zA-Z0-9!.]')),
                              ],
                              decoration: const InputDecoration(
                                  labelText: 'Password',
                                  border: OutlineInputBorder()),
                              validator: (String value) {
                                if (value.isEmpty)
                                  return 'Por favor digite su contraseña';
                                return null;
                              },
                              obscureText: true,
                            ),
                            Container(
                              padding: const EdgeInsets.only(top: 16.0),
                              alignment: Alignment.center,
                              child: SignInButton(
                                Buttons.Email,
                                text: "correo login",
                                onPressed: () async {
                                  _.signInWithEmailAndPassword();
                                },
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.only(top: 16.0),
                              alignment: Alignment.center,
                              child: SignInButton(
                                Buttons.GoogleDark,
                                text: "Google",
                                onPressed: () async {
                                  _.signInwithGoogle();
                                },
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.only(top: 25.0),
                              alignment: Alignment.center,
                              child: ElevatedButton(
                                  onPressed: () => {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    RegistroPage())),
                                        //dispose()
                                      },
                                  child: Text("Registrarse")),
                            ),
                          ],
                        ),
                      ),
                    )),
              );
            },
          )),
    );
  }
}
