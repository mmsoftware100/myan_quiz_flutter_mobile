import 'package:flutter/material.dart';
import 'package:myan_quiz/providers/game_play_provider.dart';
import 'package:myan_quiz/providers/user_provider.dart';
import 'package:provider/provider.dart';

import '../domain/entities/user.dart';

class TestPage extends StatefulWidget {
  const TestPage({Key? key}) : super(key: key);

  @override
  _TestPageState createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Test Page"),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text("Login Using access token"),
            onTap: _login
          ),
          ListTile(
              title: Text("Get Random Categories"),
              onTap: _selectRandomCategories
          ),
          ListTile(
              title: Text("Get Question by Category Id"),
              onTap: _getQuestionByCategoryId
          ),
          ListTile(
              title: Text("Submit Answer"),
              onTap: _submitAnswer
          ),
        ],
      ),
    );
  }

  void _login()async{
    print("TestPage->loginUsing");
    // show loading dialog
    String accessToken = "accessToken";
    String fcmToken = "fcmToken";
    bool status = await Provider.of<UserProvider>(context,listen:false).login(accessToken: accessToken, fcmToken: fcmToken);
    // hide loading dialog
    print("TestPage->login status $status");
  }


  void _selectRandomCategories()async{
    print("TestPage->_selectRandomCategories");
    // show loading dialog
    String accessToken = "accessToken";
    bool status = await Provider.of<GamePlayProvider>(context,listen:false).selectCategories(accessToken: accessToken);
    // hide loading dialog
    print("TestPage->_selectRandomCategories status $status");
  }
  void _getQuestionByCategoryId()async{
    print("TestPage->_getQuestionByCategoryId");
    // show loading dialog
    String accessToken = "accessToken";
    int gameTypeId = 1;
    int categoryId = 14;
    bool status = await Provider.of<GamePlayProvider>(context,listen:false).selectQuestionByCategoryId(accessToken: accessToken, gameTypeId: gameTypeId, categoryId: categoryId);
    // hide loading dialog
    print("TestPage->_selectRandomCategories status $status");
  }


  void _submitAnswer()async{
    print("TestPage->_submitAnswer");
    // show loading dialog
    String accessToken = "accessToken";
    int gameTypeId = 1;
    int questionId = 14;
    int answerId = 14;
    try{
      User user = await Provider.of<GamePlayProvider>(context,listen:false).answer(accessToken: accessToken, gameTypeId: gameTypeId, questionId: questionId, answerId: answerId);
      // hide loading dialog
      print("TestPage->_submitAnswer status ${user.name}");
    }
    catch(e,stackTrace){
      print("TestPage->_submitAnswer exceptioin ");
      print(e);
      print(stackTrace);
    }

  }


}
