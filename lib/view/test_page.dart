import 'package:flutter/material.dart';
import 'package:myan_quiz/providers/game_play_provider.dart';
import 'package:myan_quiz/providers/user_provider.dart';
import 'package:provider/provider.dart';

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


}
