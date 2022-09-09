

import 'package:flutter/material.dart';
import 'package:myan_quiz/domain/entities/user.dart';

import '../domain/entities/game_type.dart';

class GamePlayProvider extends ChangeNotifier{
  /* list of data */
  /*
      1. list of game type
      2  game type detail

   */
  /* list of use case */
  /*
    1. select game types
        @input
         access token
        @output
          List of game types
    2.
  */

  List<GameType> gameTypes = [];
  GameType gameType = GameType.sample;

  Future<bool> select({required String accessToken}){
    bool status = true;
    return Future.delayed(Duration(seconds: 5),(){
      gameTypes = [
        GameType(id: 1, name: "Game Type One", image: "https://ssl.gstatic.com/ui/v1/icons/mail/rfr/logo_gmail_lockup_default_1x_r5.png"),
        GameType(id: 2, name: "Game Type Two", image: "https://pub.dev/static/hash-t3bgi1vk/img/pub-dev-logo-2x.png"),
        GameType(id: 3, name: "Game Type Three", image: "https://app-cdn.clickup.com/assets/images/brand/clickup-symbol_color.svg"),
      ];
      return status;
    });
  }

  void setGameType(GameType gameTypeUpdate){
    gameType = gameTypeUpdate;
    notifyListeners();
  }
}

