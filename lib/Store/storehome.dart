
import 'package:flutter/material.dart';
import 'cart.dart';

double width;

class StoreHome extends StatefulWidget {
  @override
  _StoreHomeState createState() => _StoreHomeState();
}

class _StoreHomeState extends State<StoreHome> {
  @override
  Widget build(BuildContext context) {
    width = MediaQuery
        .of(context)
        .size
        .width;
    return SafeArea(
      child: Scaffold(appBar: AppBar(
        title: Center(
          child: Text(
            'Alibaba', style: TextStyle(fontWeight: FontWeight.bold,
          ),
          ),
        ),
        centerTitle: true,
        actions: [
          Stack(children: [
            IconButton(icon: Icon(Icons.shopping_cart, color: Colors.pink,),
              onPressed: () {
                Route route = MaterialPageRoute(builder: (c) => CartPage());
                Navigator.pushReplacement(context, route);
              },)
          ],)
        ],
      ),
        body: _search(),

      ),
    );
  }

  Widget _search() {
    return Container(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Container(
              height: 40,
              alignment: Alignment.center,
              decoration: BoxDecoration(

                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Search Products",
                    hintStyle: TextStyle(fontSize: 12),
                    contentPadding:
                    EdgeInsets.only(left: 10, right: 10, bottom: 0, top: 5),
                    prefixIcon: Icon(Icons.search, color: Colors.black54)),
              ),
            ),
          ),
          SizedBox(width: 20),
          Icon(Icons.filter_list, color: Colors.black54)
        ],
      ),
    );
  }
}
