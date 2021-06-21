import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegistroController extends GetxController {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  final formKey = GlobalKey<FormState>();
  // GlobalKey<FormState> addFormKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  bool success;
  String userEmail;

  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  void register() async {
    try {
      final User user = (await _auth.createUserWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      ))

          // Manejo de estado del usuario
          .user;
      if (user != null) {
        success = true;
        print("Registro Ok");
        print(user.email);
        Future.delayed(
          Duration(seconds: 2),
          () {
            Get.toNamed("/foodpage");
          },
        );
        userEmail = user.email;
      } else {
        success = false;
        print("No se puede registrar, usuario ya esta registrado");
      }
    } on FirebaseAuthException catch (e) {
      print(e);
    }
  }
}

// example code for sign out
/* void _signOut() async{
    await _auth.signOut();
  }

  void signOut() async{
    final User user = await _auth.currentUser;
    if(user==null){
      Get.snackbar('Fallo', 'No puede ingresar, revise sus datos!!');
      return;
    }
  _signOut();
  final String uid = user.uid;
  Get.snackbar('Out',uid + 'has successfully signed out!!',
  snackPosition: SnackPosition.BOTTOM);
  Get.toNamed("/principal")
  }

  // example code of how to sign in with Google

  void signInWithGoogle() async{
  try{
    UserCredential userCredential;

    final GoogleSignInAccount googleUser = await GoogleSignIn().signIn();
    final GoogleSignInAuthentication googleAuth =
    await googleUser.authentication;

    final GoogleAuthCredential googleAuthCredential = 
    GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken, 
      idToken: googleAuth.idToken,
    );
    userCredential = await _auth.signInWithCredential(googleAuthCredential);

    final user = userCredential.user;
    Get.snackbar('Hola', 'Sign In ${user.uid} with Google');
    print('Ingreso bien al sistema');
    Future.delayed(
      Duration(seconds: 2),
      (){
        Get.toNamed("/food");

      },
    );
  }catch(e){
    print(e);

  Get.snackbar('Fallo', 'Falla en Google: $e',
  snackPosition: SnackPosition.BOTTOM)
  }
}
*/

/*void signInWithEmailAndPassword() async{
    try{
      final User user = (await _auth.signInWithEmailAndPassword(email: 
      emailController.text, 
      password: passwordController.text,
      ))
      .user;
      Get.snackbar('Hola!!', 'Su ingreso ha sido exitoso')
      print('Ingreso correctamente!!')
      Future.delayed(
        Duration(seconds: 2),
        () {
          Get.toNamed("/food");
        },
      );
    
    }catch(e){
      Get.snackbar('Fallo', 'No puede ingresar, revise sus datos!!',
      snackPosition: SnackPosition.BOTTOM)
    }
  }
  */
