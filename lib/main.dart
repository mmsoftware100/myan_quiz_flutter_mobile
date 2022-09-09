import 'package:flutter/material.dart';
import 'package:myan_quiz/providers/user_provider.dart';
import 'package:myan_quiz/view/splash_screen_page.dart';
import 'package:provider/provider.dart';

void main()
{
  runApp(
      MultiProvider(
          providers: [
            ChangeNotifierProvider(create: (_) => UserProvider()),
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