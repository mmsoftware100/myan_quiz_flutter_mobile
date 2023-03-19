import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart' as firebase;
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:myan_quiz/providers/game_play_provider.dart';
import 'package:myan_quiz/providers/reward_provider.dart';
import 'package:myan_quiz/providers/user_provider.dart';
import 'package:myan_quiz/view/pre_login_pag.dart';
import 'package:myan_quiz/view/splash_screen_page.dart';
import 'package:provider/provider.dart';

import '../domain/entities/user.dart' as our;
import '../utils/loader.dart';

class TestPage extends StatefulWidget {
  const TestPage({Key? key}) : super(key: key);

  @override
  _TestPageState createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {

  final GlobalKey<State> _keyLoader = new GlobalKey<State>();
  firebase.User? firebaseUser;


  @override
  void initState() {

    print("test_page->initState");
    // TODO: implement initState
    super.initState();
    firebase.FirebaseAuth.instance
        .authStateChanges()
        .listen((firebase.User? user) async{
          if (user != null) {
            print(user.email);
            print(user.displayName);
            print(user.photoURL);
            String token2 = await user.getIdToken();
            print("token2 is ");
            debugPrint(token2);
            print(user.getIdToken());
            print(user.uid);
            setState(() {
              firebaseUser = user;
            });

            print("getting id token");
            //IdTokenResult? tokenResult = await firebase.FirebaseAuth.instance.currentUser?.getIdTokenResult();
            //print(tokenResult?.token);

      }
    });
  }


  void printWrapped(String text) {
    final pattern = RegExp('.{1,800}'); // 800 is the size of each chunk
    pattern.allMatches(text).forEach((match) => print(match.group(0)));
  }

  void getIdToken()async{
    print("getIdToken");
    IdTokenResult? tokenResult = await firebase.FirebaseAuth.instance.currentUser?.getIdTokenResult();
    print(tokenResult?.token);
    print("log");
    //log(tokenResult?.token ?? "token");
    printWrapped(tokenResult?.token ?? "token");
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Test Page"),
      ),
      body: ListView(
        children: [
          ListTile(
              title: Text("Login Using email and password"),
              onTap: _loginWithEmail
          ),
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
              title: Text("Submit Wrong Answer"),
              onTap: _submitAnswer
          ),
          ListTile(
              title: Text("Submit Correct Answer"),
              onTap: _submitCorrectAnswer
          ),
          ListTile(
              title: Text("Select Telephone Operators"),
              onTap: _selectTelephoneOperators
          ),
          ListTile(
              title: Text("Select Exchange Rates"),
              onTap: _selectBills
          ),
          ListTile(
              title: Text("Select Exchanges"),
              onTap: _selectExchanges
          ),
          ListTile(
              title: Text("Exchange"),
              onTap: _exchange
          ),
          ListTile(
              title: Text("Splash Screen"),
              onTap: _splash
          ),
          ListTile(
              title: Text("Sign In With Google"),
              onTap: _signInWithGoogle
          ),
          ListTile(
              title: Text("Sign Out"),
              onTap: signOut
          ),
          ListTile(
              title: Text("Get Token"),
              onTap: getIdToken
          ),
        ],
      ),
    );
  }



  Future<UserCredential> _signInWithGoogle() async {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    // Once signed in, return the UserCredential
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }
  Future<void> signOut() async {
    print("signOut");
    await GoogleSignIn().signOut();
    // FirebaseAuth.instance.signOut();
    await FirebaseAuth.instance.signOut();

    setState(() {
      firebaseUser = null;
    });
  }


  void _loginWithEmail()async{
    print("TestPage->_loginWithEmail");
    // show loading dialog
    String email = "admin@email.com";
    String password = "12345678";

    Dialogs.showLoadingDialog(context, _keyLoader);
    bool status = await Provider.of<UserProvider>(context,listen:false).loginWithEmailPlz(email: email, password: password);
    // hide loading dialog
    print("TestPage->login status $status");

    Navigator.pop(context);
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
    int categoryId = 1;
    bool status = await Provider.of<GamePlayProvider>(context,listen:false).selectQuestionByCategoryId(accessToken: accessToken, gameTypeId: gameTypeId, categoryId: categoryId);
    // hide loading dialog
    print("TestPage->_selectRandomCategories status $status");
  }
  void _submitAnswer()async{
    print("TestPage->_submitAnswer");
    // show loading dialog
    String accessToken = "accessToken";
    int gameTypeId = 1;
    int questionId = 1;
    int answerId = 2;
    try{
      our.User user = await Provider.of<GamePlayProvider>(context,listen:false).answer(accessToken: accessToken, gameTypeId: gameTypeId, questionId: questionId, answerId: answerId);
      // hide loading dialog
      print("TestPage->_submitAnswer status ${user.name}");
    }
    catch(e,stackTrace){
      print("TestPage->_submitAnswer exceptioin ");
      print(e);
      print(stackTrace);
    }

  }

  void _submitCorrectAnswer()async{
    print("TestPage->_submitCorrectAnswer");
    // show loading dialog
    String accessToken = "accessToken";
    int gameTypeId = 1;
    int questionId = 1;
    int answerId = 1;
    try{
      our.User user = await Provider.of<GamePlayProvider>(context,listen:false).answer(accessToken: accessToken, gameTypeId: gameTypeId, questionId: questionId, answerId: answerId);
      // hide loading dialog
      print("TestPage->_submitCorrectAnswer status ${user.name}");
    }
    catch(e,stackTrace){
      print("TestPage->_submitCorrectAnswer exceptioin ");
      print(e);
      print(stackTrace);
    }

  }
  void _selectTelephoneOperators()async{
    print("TestPage->_selectTelephoneOperators");
    String accessToken = "accessToken";
    bool status = await Provider.of<RewardProvider>(context,listen:false).selectTelephoneOperators(accessToken: accessToken);
    print("TestPage->_selectTelephoneOperators status $status");
  }
  void _selectBills()async{
    print("TestPage->_selectBills");
    String accessToken = "accessToken";
    bool status = await Provider.of<RewardProvider>(context,listen:false).selectBills(accessToken: accessToken);
    print("TestPage->_selectBills status $status");
  }
  void _selectExchanges()async{
    print("TestPage->_selectExchanges");
    String accessToken = "accessToken";
    bool status = await Provider.of<RewardProvider>(context,listen:false).selectBillExchanges(accessToken: accessToken);
    print("TestPage->_selectExchanges status $status");
  }
  void _exchange()async{
    print("TestPage->_exchange");
    String accessToken = "accessToken";
    int telephoneOperatorId = 1;
    int billExchangeRateId = 1;
    String phoneNo = "091232121";
    bool status = await Provider.of<RewardProvider>(context,listen:false).exchangeBill(accessToken: accessToken, telephoneOperatorId: telephoneOperatorId, billExchangeRateId: billExchangeRateId, phoneNo: phoneNo);
    print("TestPage->_exchange status $status");
  }
  void _splash()async{
    print("TestPage->_splash");
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => PreLoginPage()));
  }


}
