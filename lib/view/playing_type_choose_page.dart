import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:myan_quiz/providers/game_play_provider.dart';
import 'package:myan_quiz/providers/user_provider.dart';
import 'package:myan_quiz/utils/global.dart';
import 'package:myan_quiz/view/categories_chosen_page.dart';
import 'package:provider/provider.dart';

import '../components/custom_back_key.dart';
import '../utils/loader.dart';
import 'login_page.dart';

class PlayingTypeChoosePage extends StatefulWidget {
  String? userNameFromSF;
  PlayingTypeChoosePage(this.userNameFromSF);

  @override
  _PlayingTypeChoosePageState createState() => _PlayingTypeChoosePageState();
}

class _PlayingTypeChoosePageState extends State<PlayingTypeChoosePage> {

  final GlobalKey<State> _keyLoader = new GlobalKey<State>();
  bool defaultAccessTokenAtatus = false;
  Future<bool> requestAccessToken()async{
     return await Provider.of<UserProvider>(context, listen:false).loginWithEmailPlz(email: "aung@gmail.com", password: "12345678");
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.transparent,
      backgroundColor: Color(getColorHexFromStr('#48CEAD')),
      body: Stack(
        alignment: Alignment.topLeft,
        children: [
          SafeArea(
            child: // try align widget
            SingleChildScrollView(
              child: Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height,
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      // height: 300,
                      height: MediaQuery.of(context).size.height / 3.54,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                          // color: Colors.white,
                          borderRadius:
                          BorderRadius.only(bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30)),
                        // BorderRadius.all(Radius.circular(30))
                          image: DecorationImage(
                      image: AssetImage("assets/images/playing_type_choose_title_bg.jpg"),
                fit: BoxFit.cover,
              ),
                      ),
                      // child: Image.asset("assets/images/playing_type_choose_title_bg.jpg"),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("ကစားမည့်ပုံစံကိုရွေးချယ်ပါ",style: TextStyle(color: Colors.white70,fontWeight: FontWeight.bold,fontSize: 18),),
                        ),
                      ),
                    ),



                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/button_bg_paper.png"),
                            fit: BoxFit.fill,
                          ),
                        ),
                        height: MediaQuery.of(context).size.height/6,
                        width: MediaQuery.of(context).size.width/1.5,
                        child: InkWell(
                          child: Center(child: Text("အလွတ်တမ်းကစားမည်",style: TextStyle(color: Colors.white),)),
                          onTap: ()async{

                            // show loading indicator
                            Dialogs.showLoadingDialog(context, _keyLoader);

                            String accessToken = Provider.of<UserProvider>(context, listen: false).user.accessToken;
                            bool status = await Provider.of<GamePlayProvider>(context, listen:false).selectCategories(accessToken: accessToken);
                            // hide loading indicator
                            Navigator.pop(context);
                            if(status == true){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>CategoriesChosenPage()));
                            }
                            else{

                              AwesomeDialog(
                                context: context,
                                dialogType: DialogType.warning,
                                borderSide: const BorderSide(
                                  color: Colors.green,
                                  width: 2,
                                ),
                                width: 280,
                                buttonsBorderRadius: const BorderRadius.all(
                                  Radius.circular(2),
                                ),
                                dismissOnTouchOutside: true,
                                dismissOnBackKeyPress: false,
                                // onDismissCallback: (type) {
                                //   ScaffoldMessenger.of(context).showSnackBar(
                                //     SnackBar(
                                //       content: Text('Dismissed by $type'),
                                //     ),
                                //   );
                                // },
                                headerAnimationLoop: false,
                                animType: AnimType.bottomSlide,
                                title: 'Please Login',
                                desc: 'You need to login to proceed!!!',
                                showCloseIcon: true,
                                btnOkOnPress: () {
                                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> LoginPage()));
                                },
                              ).show();
                            }

                            /*
                            defaultAccessTokenAtatus = await requestAccessToken();
                            if(defaultAccessTokenAtatus == true){

                            }

                             */


                          },
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/button_bg_paper.png"),
                            fit: BoxFit.fill,
                          ),
                        ),
                        height: MediaQuery.of(context).size.height/6,
                        width: MediaQuery.of(context).size.width/1.5,
                        child: InkWell(
                          child: Center(child: Text("မစ်ရှင်ဖြင့်ကစားမည်",style: TextStyle(color: Colors.white),)),
                          onTap: ()async{


                            // show loading indicator
                            Dialogs.showLoadingDialog(context, _keyLoader);

                            String accessToken = Provider.of<UserProvider>(context, listen: false).user.accessToken;
                            bool status = await Provider.of<GamePlayProvider>(context, listen:false).selectCategories(accessToken: accessToken);
                            // hide loading indicator
                            Navigator.pop(context);
                            if(status == true){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>CategoriesChosenPage()));
                            }
                            else{

                              AwesomeDialog(
                                context: context,
                                dialogType: DialogType.warning,
                                borderSide: const BorderSide(
                                  color: Colors.green,
                                  width: 2,
                                ),
                                width: 280,
                                buttonsBorderRadius: const BorderRadius.all(
                                  Radius.circular(2),
                                ),
                                dismissOnTouchOutside: true,
                                dismissOnBackKeyPress: false,
                                // onDismissCallback: (type) {
                                //   ScaffoldMessenger.of(context).showSnackBar(
                                //     SnackBar(
                                //       content: Text('Dismissed by $type'),
                                //     ),
                                //   );
                                // },
                                headerAnimationLoop: false,
                                animType: AnimType.bottomSlide,
                                title: 'Please Login',
                                desc: 'You need to login to proceed!!!',
                                showCloseIcon: true,
                                btnOkOnPress: () {
                                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> LoginPage()));
                                },
                              ).show();
                            }

                          },
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/button_bg_paper.png"),
                            fit: BoxFit.fill,
                          ),
                        ),
                        height: MediaQuery.of(context).size.height/6,
                        width: MediaQuery.of(context).size.width/1.5,
                        child: InkWell(
                          child: Center(child: Text("စိန်ခေါ်ကစားမည်",style: TextStyle(color: Colors.white),)),
                          onTap: ()async{


                            // show loading indicator
                            Dialogs.showLoadingDialog(context, _keyLoader);

                            String accessToken = Provider.of<UserProvider>(context, listen: false).user.accessToken;
                            bool status = await Provider.of<GamePlayProvider>(context, listen:false).selectCategories(accessToken: accessToken);
                            // hide loading indicator
                            Navigator.pop(context);
                            if(status == true){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>CategoriesChosenPage()));
                            }
                            else{

                              AwesomeDialog(
                                context: context,
                                dialogType: DialogType.warning,
                                borderSide: const BorderSide(
                                  color: Colors.green,
                                  width: 2,
                                ),
                                width: 280,
                                buttonsBorderRadius: const BorderRadius.all(
                                  Radius.circular(2),
                                ),
                                dismissOnTouchOutside: true,
                                dismissOnBackKeyPress: false,
                                // onDismissCallback: (type) {
                                //   ScaffoldMessenger.of(context).showSnackBar(
                                //     SnackBar(
                                //       content: Text('Dismissed by $type'),
                                //     ),
                                //   );
                                // },
                                headerAnimationLoop: false,
                                animType: AnimType.bottomSlide,
                                title: 'Please Login',
                                desc: 'You need to login to proceed!!!',
                                showCloseIcon: true,
                                btnOkOnPress: () {
                                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> LoginPage()));
                                },
                              ).show();
                            }

                          },
                        ),
                      ),
                    )

                  ],
                ),
              ),
            ),
          ),
          widget.userNameFromSF != "" ?            CustomBackKey()
              :Container()
        ],
      ),
      /*
      bottomNavigationBar:  BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      fixedColor: Color(0xff2398C3),
      showSelectedLabels: false,
      showUnselectedLabels: false,
      // currentIndex: snapshot.data.index,
      // onTap: _bottomNavBarBloc.pickItem,
      items: [
        BottomNavigationBarItem(
          title: Text('Home'),
          icon: Icon(Icons.home),
        ),
        BottomNavigationBarItem(
          title: Text('Browse'),
          icon: Icon(Icons.assessment),
        ),
        BottomNavigationBarItem(
          title: Text('Icon'),
          icon: Container(
            child: FlutterLogo(
              size: 35.0,
            ),
          ),
        ),
        BottomNavigationBarItem(
          title: Text('Favorites'),
          icon: Icon(Icons.account_circle_outlined),
        ),
        BottomNavigationBarItem(
          title: Text('Settings'),
          icon: Icon(Icons.settings),
        ),
      ],
    )

       */
    );
  }
}
