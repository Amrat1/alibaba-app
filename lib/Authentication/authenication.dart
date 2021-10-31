import 'package:alibabacollection/Authentication/login.dart';
import 'package:alibabacollection/Authentication/register.dart';
import 'package:flutter/material.dart';

class AuthenticScreen extends StatefulWidget {
  @override
  _AuthenticScreenState createState() => _AuthenticScreenState();
}

class _AuthenticScreenState extends State<AuthenticScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            flexibleSpace: Container(
              decoration: new BoxDecoration(
                  gradient: new LinearGradient(
                colors: [Colors.pink, Colors.deepOrange],
                begin: const FractionalOffset(0.0, 0.0),
                end: const FractionalOffset(1.0, 0.0),
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp,
              )),
            ),
            title: Center(
              child: Text(
                'Alibaba',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 50.0,
                    color: Colors.white),
              ),
            ),
            centerTitle: true,
            bottom: TabBar(
              tabs: [
                Tab(
                  icon: Icon(
                    Icons.lock,
                    color: Colors.white,
                  ),
                  text: 'Login',
                ),
                Tab(
                  icon: Icon(
                    Icons.person_add,
                    color: Colors.white,
                  ),
                  text: 'Register',
                )
              ],
              indicatorColor: Colors.white,
              indicatorWeight: 2.0,
            ),
          ),
          body: Container(
            decoration: BoxDecoration(color: Colors.grey[200]),
            child: TabBarView(
              children: [
                Login(), Register()],
            ),
          ),
        ));
  }
}
