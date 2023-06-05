import 'dart:async';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:myan_quiz/providers/user_provider.dart';
import 'package:myan_quiz/view/login_page.dart';
import 'package:myan_quiz/view/playing_type_choose_page.dart';
import 'package:myan_quiz/view/pre_login_pag.dart';
import 'package:myan_quiz/view/profile_page.dart';
import 'package:provider/provider.dart';

import 'categories_chosen_page.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({Key? key}) : super(key: key);

  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _login();
    /*
    Timer(
        Duration(seconds: 3),
            () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => PlayingTypeChoosePage("")))
    );

     */
  }

  void _login() async{
    // get saved email and password
    String email =  await Provider.of<UserProvider>(context , listen: false).getEmailFromSP();
    String password =  await Provider.of<UserProvider>(context , listen: false).getPasswordFromSP();

    bool status = await Provider.of<UserProvider>(context, listen: false).loginWithEmailPlz(
        email: email.isEmpty ? 'aung@email.com' : email,
        password: password.isEmpty ? '12345678' : password
    );

    if(status){
      // check default or custom
      if(Provider.of<UserProvider>(context, listen: false).user.email == 'aung@email.com'){
        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => PlayingTypeChoosePage("")));
      }
      else{
        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => ProfilePage()));
      }
    }
    else{
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => LoginPage()));
    }

    // login
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(getColorHexFromStr('#48CEAD')),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/myan_quiz_logo.png"),
              // Text("The best on the wold",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.red),)
            ],
          ),
        ),
      ),
    );
  }

  int getColorHexFromStr(String colorStr) {
    colorStr = "FF" + colorStr;
    colorStr = colorStr.replaceAll("#", "");
    int val = 0;
    int len = colorStr.length;
    for (int i = 0; i < len; i++) {
      int hexDigit = colorStr.codeUnitAt(i);
      if (hexDigit >= 48 && hexDigit <= 57) {
        val += (hexDigit - 48) * (1 << (4 * (len - 1 - i)));
      } else if (hexDigit >= 65 && hexDigit <= 70) {
        // A..F
        val += (hexDigit - 55) * (1 << (4 * (len - 1 - i)));
      } else if (hexDigit >= 97 && hexDigit <= 102) {
        // a..f
        val += (hexDigit - 87) * (1 << (4 * (len - 1 - i)));
      } else {
        throw new FormatException("An error occurred when converting a color");
      }
    }
    return val;
  }
}
