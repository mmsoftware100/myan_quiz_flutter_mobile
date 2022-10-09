import 'package:flutter/material.dart';
import 'package:myan_quiz/providers/game_play_provider.dart';
import 'package:myan_quiz/providers/reward_provider.dart';
import 'package:myan_quiz/providers/user_provider.dart';

import 'package:myan_quiz/view/exchange/bills/bills_page.dart';
import 'package:myan_quiz/view/exchange/bills/choose_operator_for_bill_page.dart';
import 'package:myan_quiz/view/leader_board_page.dart';
import 'package:myan_quiz/view/question_page_answer.dart';
import 'package:myan_quiz/view/setting_page.dart';
import 'package:myan_quiz/view/spin_whell_page.dart';
import 'package:myan_quiz/view/splash_screen_page.dart';
import 'package:myan_quiz/view/test_page.dart';
import 'package:provider/provider.dart';

import 'injection_container.dart' as di;

void main()async{
  await di.init();
  runApp(
      MultiProvider(
          providers: [
            ChangeNotifierProvider(create: (_) => UserProvider(
              userLogin: di.sl()
            )),
            ChangeNotifierProvider(create: (_) => GamePlayProvider(
              getRandomCategories: di.sl(),
              getQuestionByCategoryId: di.sl(),
              submitAnswer: di.sl()
            )),
            ChangeNotifierProvider(create: (_) => RewardProvider()),
          ],
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            //home: SplashScreenPage(),
            home: TestPage(),
          )
      )
  );
  /*
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreenPage(),
      // home: ChooseOperatorBillPage(),
      // home: LeaderBoardPage(),
    )
  );

   */

}