import 'package:app_estacion_moda/controllers/login.controller.dart';
//import 'package:app_estacion_moda/pages/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:user_profile_avatar/user_profile_avatar.dart';

class FoodPage extends StatelessWidget {
  final controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Food Network'),
        backgroundColor: Colors.yellow[800],
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
      drawer: Drawer(
        child: Column(
          children: [
            UserProfileAvatar(
              avatarUrl: 'https://picsum.photos/id/237/5000/5000',
              onAvatarTap: () {
                print('Avatar Tapped..');
              },
              notificationCount: 5, // Notificaciones estaticas
              notificationBubbleTextStyle: TextStyle(
                fontSize: 30,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              avatarSplashColor: Colors.purple,
              radius: 100,
              isActivityIndicatorSmall: false,
              avatarBorderData: AvatarBorderData(
                borderColor: Colors.white,
                borderWidth: 5.0,
              ),          
            )
          ],                    
        ),
         // pub.dev para buscar imagen
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
