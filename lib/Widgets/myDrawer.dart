// import 'package:e_shop/Authentication/authenication.dart';
// import 'package:e_shop/Config/config.dart';
// import 'package:e_shop/Address/addAddress.dart';
// import 'package:e_shop/Store/Search.dart';
// import 'package:e_shop/Store/cart.dart';
// import 'package:e_shop/Orders/myOrders.dart';
// import 'package:e_shop/Store/storehome.dart';
import 'package:alibabacollection/Authentication/authenication.dart';
import 'package:alibabacollection/Config/config.dart';
import 'package:alibabacollection/Orders/myOrders.dart';
import 'package:alibabacollection/Store/Search.dart';
import 'package:alibabacollection/Store/cart.dart';
import 'package:alibabacollection/Store/storehome.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
children: [
  Container(
    color: Colors.grey[200],
    child: Column(children: [Material(
      borderRadius: BorderRadius.all(Radius.circular(80.0)),
      elevation: 8.0,
      child: CircleAvatar(backgroundImage: NetworkImage(EcommerceApp.sharedPreferences.getString(EcommerceApp.userAvatarUrl),),
      ),
    ),
      SizedBox(height: 10.0,),
      Text(EcommerceApp.sharedPreferences.getString(EcommerceApp.userName),
      ),
      SizedBox(height: 12.0,),
      Container(color: Colors.grey,
        child: Column(
          children: [ListTile(
            leading: Icon(Icons.home,),
            title: Text("Home"),
            onTap: (){
              Route route= MaterialPageRoute(builder: (c)=> StoreHome());
              Navigator.pushReplacement(context, route);
            },

          ),
            Divider(height: 10.0,thickness: 6.0,),

            ListTile(
              leading: Icon(Icons.border_color,),
              title: Text("Previous Order"),
              onTap: (){
                Route route= MaterialPageRoute(builder: (c)=> MyOrders());
                Navigator.pushReplacement(context, route);
              },

            ),
            Divider(height: 10.0,thickness: 6.0,),

            ListTile(
              leading: Icon(Icons.search,),
              title: Text("Search product"),
              onTap: (){
                Route route= MaterialPageRoute(builder: (c)=> SearchProduct());
                Navigator.pushReplacement(context, route);
              },

            ),
            Divider(height: 10.0,thickness: 6.0,),

            ListTile(
              leading: Icon(Icons.shopping_cart,),
              title: Text("My Cart"),
              onTap: (){
                Route route= MaterialPageRoute(builder: (c)=> CartPage());
                Navigator.pushReplacement(context, route);
              },

            ),
            Divider(height: 10.0,thickness: 6.0,),

            ListTile(
              leading: Icon(Icons.favorite,),
              title: Text("Favorite Product"),
              onTap: (){
                Route route= MaterialPageRoute(builder: (c)=> MyOrders());
                Navigator.pushReplacement(context, route);
              },

            ),
            Divider(height: 10.0,thickness: 6.0,),
            ListTile(
              leading: Icon(Icons.logout,),
              title: Text("Logout"),
              onTap: (){
                EcommerceApp.auth.signOut().then((c) {
                  Route route = MaterialPageRoute(
                      builder: (c) => AuthenticScreen());
                  Navigator.pushReplacement(context, route);
                });
              },

            ),
            Divider(height: 10.0,thickness: 6.0,),

          ],
        ),)
    ],

    ),
  )
],
      ),
    );
  }
}
