

import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:myan_quiz/domain/entities/user.dart';

import '../core/error/failures.dart';
import '../domain/usecases/user_login.dart';

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
  final UserLogin userLogin;

  UserProvider({
    required this.userLogin
  });

  User user = User.sample;

  Future<bool> login({required String accessToken, required String fcmToken})async{
    bool status = true;
    final Either<Failure, User> userEither = await userLogin(UserLoginParams(accessToken: accessToken, fcmToken: fcmToken));
    return userEither.fold(
            (failure)  {
          // we don't need to do nothing
          // or may be notify failure type for user login
          print("UserProvider->login failuer");
          print(failure);
          status = false;
          return status;
        },
            (loggedInUser)  async{
          user = loggedInUser;
          status = true;
          return status;
        }
    );
    return Future.delayed(Duration(seconds: 5),(){
      user.accessToken = accessToken;
      user.name = "Logged In User";
      return status;
    });
  }
}

