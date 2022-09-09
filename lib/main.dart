import 'package:flutter/material.dart';
import 'package:myan_quiz/providers/game_play_provider.dart';
import 'package:myan_quiz/providers/user_provider.dart';
import 'package:myan_quiz/view/splash_screen_page.dart';
import 'package:provider/provider.dart';

void main()
{
  runApp(
      MultiProvider(
          providers: [
            ChangeNotifierProvider(create: (_) => UserProvider()),
            ChangeNotifierProvider(create: (_) => GamePlayProvider()),
          ],
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            home: SplashScreenPage(),
          )
      )
  );
  /*
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreenPage(),
    )
  );
   */
}