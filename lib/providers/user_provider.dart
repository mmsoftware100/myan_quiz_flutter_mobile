

import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:myan_quiz/domain/entities/user.dart';
import 'package:myan_quiz/domain/repositories/user_repository.dart';

import '../core/error/failures.dart';
import '../domain/usecases/user_login.dart';

class UserProvider extends ChangeNotifier{
  // use case list
  final UserLogin userLogin;
  // constructor

  UserProvider({
    required this.userLogin
  });

  // data repo
  User user = User.sample;

  // methods
  Future<bool> login({required String accessToken, required String fcmToken})async{
    bool status = true;
    final Either<Failure, User> userEither = await userLogin(UserLoginParams(accessToken: accessToken, fcmToken: fcmToken));
    return userEither.fold(
            (failure)  {
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

    /*
    return Future.delayed(Duration(seconds: 5),(){
      if(accessToken == "accessToken"){
        return true;
      }
      else{
        return false;
      }
    });
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

     */
  }
}

