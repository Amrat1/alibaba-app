
import 'package:alibabacollection/Store/storehome.dart';
import 'package:alibabacollection/Widgets/customTextField.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}
class _LoginState extends State<Login>
{
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailTextEditingController = TextEditingController();
  final TextEditingController _passwordTextEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double _screenWidth = MediaQuery
        .of(context)
        .size
        .width,
        _screenHeight = MediaQuery
            .of(context)
            .size
            .height;
    return SingleChildScrollView(
      child: Container(
          child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
             Container(alignment: Alignment.bottomCenter,
             child: Image.asset('images/shop.gif',fit: BoxFit.cover,),
             ),
                SizedBox(height: 16.0,),
                Padding(padding: EdgeInsets.only(right:8.0),
                child: Text('Login Your Account',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black87),),
                ),
    Form(key: _formKey,
    child: Column(children: [

    CustomTextField(
    controller: _emailTextEditingController,
    data: Icons.email,
    hintText: "Email",
    isObsecure: false,
    ),
    CustomTextField(
    controller: _passwordTextEditingController,
    data: Icons.remove_red_eye,
    hintText: "Password",
    isObsecure: true,
    ),
             ],
      ),
    ),
                RaisedButton(onPressed: () {
                       Navigator.pop(context);
                       Route route=MaterialPageRoute(builder: (c)=> StoreHome());
                       Navigator.pushReplacement(context, route);
                  },
                  color: Colors.deepOrange,
                  child: Text(
                    'Login', style: TextStyle(color: Colors.white),),
                ),

                SizedBox(height: 50,),
                Container(height: 4.0,
                  width: _screenWidth * 0.8,
                  color: Colors.deepOrange,),
                SizedBox(height: 10.0,),
                // FlatButton(onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=>
                // )),)
      ]
          ),
    ),
    );
  }
}
void loginUser()async{

}