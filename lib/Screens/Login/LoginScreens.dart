import 'package:flutter/material.dart';
import 'package:toko_gitar/Components/Login/LoginComponent.dart';
import 'package:toko_gitar/size_config.dart';

class LoginScreen extends StatelessWidget {
  static String routName = "/sign_in";  

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: LoginComponent(),
    );
  }
}