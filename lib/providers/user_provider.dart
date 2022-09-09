

import 'package:flutter/material.dart';
import 'package:myan_quiz/domain/entities/user.dart';

class UserProvider extends ChangeNotifier{
  /* list of data */
  /*
      1. logged in user

   */
  /* list of use case */
  /*
    1. user login
        @input
         access token
        @output
          user data
    2.
  */

  User user = User.sample;

  Future<bool> login({required String accessToken}){
    bool status = true;
    return Future.delayed(Duration(seconds: 5),(){
      user.accessToken = accessToken;
      user.name = "Logged In User";
      return status;
    });
  }
}

