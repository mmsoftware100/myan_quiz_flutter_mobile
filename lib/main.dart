import 'package:flutter/material.dart';
import 'package:myan_quiz/view/exchange/bills/bills_page.dart';
import 'package:myan_quiz/view/exchange/bills/choose_operator_for_bill_page.dart';
import 'package:myan_quiz/view/leader_board_page.dart';
import 'package:myan_quiz/view/question_page_answer.dart';
import 'package:myan_quiz/view/setting_page.dart';
import 'package:myan_quiz/view/spin_whell_page.dart';
import 'package:myan_quiz/view/splash_screen_page.dart';

void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreenPage(),
      // home: ChooseOperatorBillPage(),
      // home: LeaderBoardPage(),
    )
  );
}