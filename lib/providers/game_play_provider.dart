import 'package:flutter/material.dart';
import 'package:myan_quiz/domain/entities/answer.dart';
import 'package:myan_quiz/domain/entities/category.dart';
import 'package:myan_quiz/domain/entities/description.dart';
import 'package:myan_quiz/domain/entities/user.dart';

import '../domain/entities/game_type.dart';
import '../domain/entities/question.dart';

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

  // data repo
  List<GameType> gameTypes = [];
  GameType gameType = GameType.sample;

  List<Category> categories = [];
  Category category = Category.sample;

  Question question = Question.sample;


  // methods
  Future<bool> selectGameTypes({required String accessToken}){
    bool status = true;
    return Future.delayed(Duration(seconds: 5),(){
      gameTypes = [
        GameType(id: 1, name: "Game Type One", image: "https://ssl.gstatic.com/ui/v1/icons/mail/rfr/logo_gmail_lockup_default_1x_r5.png"),
        GameType(id: 2, name: "Game Type Two", image: "https://pub.dev/static/hash-t3bgi1vk/img/pub-dev-logo-2x.png"),
        GameType(id: 3, name: "Game Type Three", image: "https://app-cdn.clickup.com/assets/images/brand/clickup-symbol_color.svg"),
      ];
      notifyListeners();
      return status;
    });
  }
  void setGameType(GameType gameTypeUpdate){
    gameType = gameTypeUpdate;
    notifyListeners();
  }


  Future<bool> selectCategories({required String accessToken}){
    bool status = true;
    return Future.delayed(Duration(seconds: 5),(){
      categories = [
        Category(id: 1, name: "Game Category One", image: "https://ssl.gstatic.com/ui/v1/icons/mail/rfr/logo_gmail_lockup_default_1x_r5.png"),
        Category(id: 2, name: "Game Category Two", image: "https://pub.dev/static/hash-t3bgi1vk/img/pub-dev-logo-2x.png")
      ];
      notifyListeners();
      return status;
    });
  }
  void setCategory(Category categoryUpdate){
    category = categoryUpdate;
    notifyListeners();
  }


  Future<bool> selectQuestionByCategoryId({required String accessToken, required int gameTypeId, required int categoryId}){
    bool status = true;
    return Future.delayed(Duration(seconds: 5),(){
      question = Question(
          id: 1,
          name: "?????????????????????????????????????????? ?????????????????????????????? ______ ????????? ???????????????????????????",
          image: "https://myanquiz.com/images/game_play_one.jpg",
          answers: [
            Answer(id: 1, name:  "??? ?????????"),
            Answer(id: 2, name: "??? ?????????"),
            Answer(id: 3, name: "??? ?????????"),
            Answer(id: 4, name: "??? ?????????"),
          ],
          description: Description(
            id: 1,
            answerId: 4,
            name: "?????????????????????????????????????????? (???) ????????? ????????????????????????"
          )
      );
      notifyListeners();
      return status;
    });
  }
  Future<User> answer({required String accessToken, required int gameTypeId, required int questionId, required int answerId}){
    return Future.delayed(Duration(seconds: 5),(){
      User user = User(
          id: 1,
          name: "name",
          rank: "rank",
          level: "level",
          nextLevel: "nextLevel",
          levelProgress: 50,
          questionTotal: 150,
          questionPassed: 110,
          questionFailed: 40,
          coinTotal: 450,
          coinExchanged: 201,
          coinCurrent: 125,
          createdAt: DateTime.now(),
          modifiedAt: DateTime.now(),
          createdAgo: "createdAgo",
          modifiedAgo: "modifiedAgo",
          accessToken: accessToken
      );
      return user;
    });
  }

}

