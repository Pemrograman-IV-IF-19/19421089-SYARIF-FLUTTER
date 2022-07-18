import 'package:flutter/material.dart';
import 'package:toko_gitar/Components/custom_surfix_icon.dart';
import 'package:toko_gitar/Components/default_button_costume_color.dart';
import 'package:toko_gitar/size_config.dart';
import 'package:toko_gitar/utils/constants.dart';

class SignInform extends StatefulWidget {
  @override
  _SignInForm createState() => _SignInForm();
}

class _SignInForm extends State<SignInform> {
  final _formKey = GlobalKey<FormState>();
  String? username;
  String? password;
  bool? remember = false;

  TextEditingController txtUserName = TextEditingController(),
                        txtPassword = TextEditingController();

  FocusNode focusNode = new FocusNode();

  @override
  Widget build(BuildContext context){
    return Form(
        child: Column(
            children: [
              buildUserName(),
              SizedBox(height: getProportionateScreenHeight(30)),
              buildPassword(),
              SizedBox(height: getProportionateScreenHeight(30)),
              Row(
                children: [
                    Checkbox(
                      value: remember, 
                      onChanged: (value) { 
                        setState(() {
                        remember = value;
                      });
                      }),
                    Text("Tetap Masuk"),
                    Spacer(),
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        "Lupa Password", 
                        style: TextStyle(decoration: TextDecoration.underline),
                        ),
                    )
                  ],
              ),
              DefaultButtonCustomeColor(
                color: kPrimaryColor,
                text: "MASUK",
                press: () {},
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {},
                child: Text(
                  "Belum Punya Akun? Daftar Disini", 
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              )
            ],
          ),
      );
  }

  TextFormField buildUserName() {
    return TextFormField(
      controller: txtUserName, 
      keyboardType: TextInputType.text,
      style: mTitleStyle,
      decoration: InputDecoration(
        labelText: 'Username',
        hintText: 'Masukan Username Anda',
        labelStyle: TextStyle(
            color: focusNode.hasFocus ? mSubtitleColor : kPrimaryColor),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            suffixIcon: CustomSurffixIcon(
              svgIcon: "assets/icons/User.svg",
              )),
    );
  }

    TextFormField buildPassword() {
    return TextFormField(
      controller: txtPassword,
      obscureText: true,
      style: mTitleStyle,
      decoration: InputDecoration(
        labelText: 'Password',
        hintText: 'Masukan Password Anda',
        labelStyle: TextStyle(
            color: focusNode.hasFocus ? mSubtitleColor : kPrimaryColor),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            suffixIcon: CustomSurffixIcon(
              svgIcon: "assets/icons/User.svg",
              )),
    );
  }
}