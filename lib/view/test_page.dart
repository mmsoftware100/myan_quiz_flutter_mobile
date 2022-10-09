import 'package:flutter/material.dart';
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
            onTap: () async{
              print("TestPage->loginUsing");
              // show loading dialog
              String accessToken = "accessToken";
              String fcmToken = "fcmToken";
              bool status = await Provider.of<UserProvider>(context,listen:false).login(accessToken: accessToken, fcmToken: fcmToken);
              // hide loading dialog
              print("TestPage->login status $status");
            },
          )
        ],
      ),
    );
  }


}
