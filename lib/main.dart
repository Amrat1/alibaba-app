import 'package:alibabacollection/Authentication/authenication.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Config/config.dart';
main() async
{
//   WidgetsFlutterBinding.ensureInitialized();
// EcommerceApp.sharedPreferences=await SharedPreferences.getInstance();
//   EcommerceApp.auth = FirebaseAuth.instance;
//   EcommerceApp.firestore= FirebaseFirestore.instance;
   runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'alibaba collection',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Colors.green,
        ),
        home: SplashScreen()
    );
  }
}

class SplashScreen extends StatefulWidget {

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return AuthenticScreen();
  }
}

// class SplashScreen extends StatefulWidget {
//   @override
//   _SplashScreenState createState() => _SplashScreenState();
// }
//
//
// class _SplashScreenState extends State<SplashScreen>
// {
//   @override
//    void initState(){
//
//     super.initState();
//     displaySplash();
//   }
//   displaySplash(){
//   Timer(Duration(seconds: 3),()async{
//     if(await
//     EcommerceApp.auth.currentUser != null){
//       Route route= MaterialPageRoute(builder: (_)=> StoreHome());
//       Navigator.pushReplacement(context, route);
//     }
//     else{
//       Route route= MaterialPageRoute(builder: (_)=> AuthenticScreen());
//       Navigator.pushReplacement(context, route);
//     }
//   });
//   }
//   Widget build(BuildContext context) {
//     return Material(
//       child: Container(decoration: new BoxDecoration(gradient: new LinearGradient(colors: [
//         Colors.pink,Colors.lightGreen
//       ],
//         begin: const FractionalOffset(0.0, 0.0),
//         end: const FractionalOffset(1.0, 0.0),
//         stops: [0.0,1.0],
//          tileMode:TileMode.clamp,
//       )),
//       child: Center(child: Column(mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//          Image.asset("images/Alibaba.png"),
//           SizedBox(height: 20,),
//           Text(
//               'Alibaba Worlds Best Collection',
//           style: TextStyle(color: Colors.white,fontSize: 35),
//           ),
//         ],),),
//       )
//     );
//   }
// }
