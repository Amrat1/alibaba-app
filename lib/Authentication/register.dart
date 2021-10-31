import 'dart:io';
import 'dart:async';
import 'package:image_picker/image_picker.dart';
import '../Widgets/customTextField.dart';
import '../DialogBox/errorDialog.dart';
import '../DialogBox/loadingDialog.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final TextEditingController _nameTextEditingController =
      TextEditingController();
  final TextEditingController _emailTextEditingController =
      TextEditingController();
  final TextEditingController _passwordTextEditingController =
      TextEditingController();
  final TextEditingController _cPasswordTextEditingController =
      TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _userImageUrl = "";
  File _imageFile;

  @override
  Widget build(BuildContext context) {
    double _screenWidth = MediaQuery.of(context).size.width,
        _screenHeight = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Container(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            InkWell(
              onTap: () => _selectAndPickImage(),
              child: CircleAvatar(
                  radius: _screenWidth * 0.15,
                  backgroundColor: Colors.white,
                  backgroundImage:
                      _imageFile == null ? null : FileImage(_imageFile),
                  child: _imageFile == null
                      ? Icon(Icons.add_a_photo_rounded,
                          size: _screenWidth * 0.15, color: Colors.grey)
                      : null),
            ),
            SizedBox(
              height: 8.0,
            ),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  CustomTextField(
                    controller: _nameTextEditingController,
                    data: Icons.person,
                    hintText: "Name",
                    isObsecure: false,
                  ),
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
                  CustomTextField(
                    controller: _cPasswordTextEditingController,
                    data: Icons.remove_red_eye_sharp,
                    hintText: "Confirm Password",
                    isObsecure: true,
                  ),
                  RaisedButton(
                    onPressed: () {
                      _uploadAndSaveImage();
                    },
                    color: Colors.deepOrange,
                    child: Text(
                      'Sign up',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 4.0,
                    width: _screenWidth * 0.8,
                    color: Colors.deepOrange,
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Future<void> _selectAndPickImage() async {
    _imageFile = await ImagePicker.pickImage(source: ImageSource.gallery);
  }

  Future<void> _uploadAndSaveImage() async {
    if (_imageFile == null) {
      showDialog(
          context: context,
          builder: (c) {
            return ErrorAlertDialog(
                message: 'please select an image from gallery');
          });
    } else {
      _passwordTextEditingController.text ==
              _cPasswordTextEditingController.text
          ? _emailTextEditingController.text.isNotEmpty &&
                  _passwordTextEditingController.text.isNotEmpty &&
                  _cPasswordTextEditingController.text.isNotEmpty &&
                  _nameTextEditingController.text.isNotEmpty
              ? _uploadToStorage()
              : displayDialog(
                  'Please fill up the registration  complete form..')
          : displayDialog('password do not match.');
    }
  }

  displayDialog(String msg) {
    showDialog(
        context: context,
        builder: (c) {
          return ErrorAlertDialog(
            message: msg,
          );
        });
  }

  _uploadToStorage() async {
    showDialog(
        context: context,
        builder: (c) {
          return LoadingAlertDialog(message: "Authenticating please wait....");
        });
    String imageFileName = DateTime.now().millisecondsSinceEpoch.toString();
    //   StorageReference storageReference= FirebaseStorage.instance.ref().child(imageFileName);
    //   //  StorageUploadTask storageUploadTask= storageReference.putFile(_imageFile);
    //   //  StorageTaskSnapshot taskSnapshot= await storageUploadTask.onComplete;
    //   //  await taskSnapshot.ref.getDownloadURL().then((urlImage){
    //   //    _userImageUrl=urlImage;
    //   //    _registerUser();
    //   //  });
    //   // }
    //   // FirebaseAuth _auth = FirebaseAuth.instance;
    //   // void _registerUser()async{
    //   //   User= firebaseUser;
    //   //   await _auth.createUserWithEmailAndPassword(email: _emailTextEditingController.text.trim(), password: _passwordTextEditingController.text.trim()
    //   //   ).then((auth) {
    //   //     User = auth.user;
    //   //   }).catchError((error){
    //   //     Navigator.pop(context);
    //   //     showDialog(context: context, builder: (c){
    //   //       return ErrorAlertDialog(message: error.message.toString(),);
    //   //     });
    //   //   });
    //   //   if(firebaseUser != null ){
    //   //     saveUserInfoToFireStore(firebaseUser);
    //   //
    //   //   }
    //   // }
    //   // Future saveUserInfoToFireStore(User fUser) async{
    //   //   FirebaseFirestore.instance.collection("users").document(fUser.uid).setData({
    //   //     "uid":fUser.uid,
    //   //     "email":fUser.email,
    //   //     "name":_nameTextEditingController.text.trim(),
    //   //     "url":_userImageUrl,
    //   //
    //   //   });
    //   // }
  }
}
