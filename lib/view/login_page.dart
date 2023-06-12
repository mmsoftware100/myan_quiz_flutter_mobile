import 'package:after_layout/after_layout.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
//import 'package:google_sign_in/google_sign_in.dart';
import 'package:myan_quiz/components/custom_widgets.dart';
import 'package:myan_quiz/providers/user_provider.dart';
import 'package:myan_quiz/utils/global.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myan_quiz/utils/loader.dart';
import 'package:myan_quiz/view/profile_page.dart';
import 'package:myan_quiz/view/sign_up_page.dart';
import 'package:provider/provider.dart';

import '../components/custom_back_key.dart';
import '../components/terms_and_condition_alert_box.dart';

class LoginPage extends StatefulWidget {
  LoginPage();

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>
    with AfterLayoutMixin<LoginPage>{

  final GlobalKey<State> _keyLoader = new GlobalKey<State>();
  bool _agreedToTOS = true;
  // User? firebaseUser;
  TextEditingController _emailTextETextEditingController = TextEditingController();
  TextEditingController _passwordTextETextEditingController = TextEditingController();

  bool _submittable() {
    return _agreedToTOS;
  }

  void _setAgreedToTOS(bool? newValue) {
    setState(() {
      _agreedToTOS = newValue!;
    });
  }

  int getColorHexFromStr(String colorStr) {
    colorStr = "FF" + colorStr;
    colorStr = colorStr.replaceAll("#", "");
    int val = 0;
    int len = colorStr.length;
    for (int i = 0; i < len; i++) {
      int hexDigit = colorStr.codeUnitAt(i);
      if (hexDigit >= 48 && hexDigit <= 57) {
        val += (hexDigit - 48) * (1 << (4 * (len - 1 - i)));
      } else if (hexDigit >= 65 && hexDigit <= 70) {
        // A..F
        val += (hexDigit - 55) * (1 << (4 * (len - 1 - i)));
      } else if (hexDigit >= 97 && hexDigit <= 102) {
        // a..f
        val += (hexDigit - 87) * (1 << (4 * (len - 1 - i)));
      } else {
        throw new FormatException("An error occurred when converting a color");
      }
    }
    return val;
  }



  // Future<bool> _signInWithGoogle() async {
  //   // Trigger the authentication flow
  //   final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
  //
  //   // Obtain the auth details from the request
  //   final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;
  //
  //   // Create a new credential
  //   final credential = GoogleAuthProvider.credential(
  //     accessToken: googleAuth?.accessToken,
  //     idToken: googleAuth?.idToken,
  //   );
  //
  //   // Once signed in, return the UserCredential
  //   UserCredential userCredential = await FirebaseAuth.instance.signInWithCredential(credential);
  //
  //   IdTokenResult? tokenResult = await FirebaseAuth.instance.currentUser?.getIdTokenResult();
  //   print(tokenResult?.token);
  //   String accessToken = tokenResult?.token ?? "accessToken";
  //
  //   // now we have idToken
  //   // we can login with this idToken to our backend api
  //
  //   Dialogs.showLoadingDialog(context, _keyLoader);
  //   bool status = await Provider.of<UserProvider>(context,listen:false).loginWithGooglePlz(accessToken: accessToken);
  //   print("TestPage->login status $status");
  //   Navigator.pop(context);
  //   return status;
  // }



  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    /*
    FirebaseAuth.instance
        .authStateChanges()
        .listen((User? user) {
      if (user != null) {
        print(user.email);
        print(user.displayName);
        print(user.photoURL);
        print(user.getIdToken());
        print(user.uid);
        setState(() {
          firebaseUser = user;
        });
      }
    });
    */
  }

  @override
  void afterFirstLayout(BuildContext context) {
    TermsAndConditionAlertBox.showTermsAndCondition(context);
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // SizedBox(
                    //   // height: MediaQuery.of(context).size.width / 2 + 145,
                    //   height: MediaQuery.of(context).size.height,
                    //   child: Stack(
                    //     children: [
                    //       Container(
                    //         // height: 300,
                    //         height: MediaQuery.of(context).size.height / 0.5,
                    //         width: double.infinity,
                    //         decoration: const BoxDecoration(
                    //             color: Colors.grey,
                    //             borderRadius:
                    //             BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30))),
                    //       ),
                    //       // Row(
                    //       //   mainAxisAlignment: MainAxisAlignment.center,
                    //       //   children: [
                    //       //     const SizedBox(),
                    //       //     Align(
                    //       //       alignment: Alignment.bottomCenter,
                    //       //       child: CircleAvatar(
                    //       //         radius: 60.0,
                    //       //         child: ClipRRect(
                    //       //           child: Image.asset('assets/images/myan_quiz_logo.png'),
                    //       //           borderRadius: BorderRadius.circular(100.0),
                    //       //         ),
                    //       //       ),
                    //       //     ),
                    //       //   ],
                    //       // ),
                    //     ],
                    //   ),
                    // )
                    Expanded(
                      child: Container(
                        height: MediaQuery.of(context).size.height / 2,
                        width: double.infinity,
                        color: Colors.transparent,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const SizedBox(),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: ClipRRect(
                                  child: Image.asset('assets/images/myan_quiz_logo.png'),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      // height: 300,
                      height: MediaQuery.of(context).size.height / 1.5,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30))),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 40
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 18.0),
                              child: makeInput(
                                  txtEditiongContorller: _emailTextETextEditingController,
                                  label: "Email"
                              ),
                            ),
                            // TODO: text editing controller ထည့်ရန်
                            // TODO: Login ခလုပ်ကို နှိပ်တဲ့အခါ user ရိုက်ထည့်တဲ့ email နဲ့ password ကိုယူဖို့အတွက် Text Editing Controller (2) ခု လိုအပ်
                            makeInput(
                                txtEditiongContorller: _passwordTextETextEditingController,
                                label: "Password"),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Checkbox(
                                      value: _agreedToTOS,
                                      onChanged: _setAgreedToTOS,
                                    ),
                                    GestureDetector(
                                      onTap: () => _setAgreedToTOS(!_agreedToTOS),
                                      child: const Text(
                                        'Remember me',
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ],
                                ),
                                GestureDetector(
                                  onTap: () {
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
                                      title: 'SORRY',
                                      desc: 'Please contact to Page',
                                      showCloseIcon: true,
                                      // btnCancelOnPress: () {},
                                      btnOkOnPress: () {},
                                    ).show();

                                  },
                                  child: const Text(
                                    'Forgot password ?',
                                    textAlign: TextAlign.center,
                                  ),
                                ),

                              ],
                            ),
                            MaterialButton(
                              minWidth: double.infinity,
                              // minWidth: MediaQuery.of(context).size.width/1.5,
                              height:40,
                              onPressed: ()async{
                                String email = "admin@email.com"; //TODO: User ရိုက်ထည့်တဲ့ Input မှ ရယူရန်
                                String password = "password"; //TODO: User ရိုက်ထည့်တဲ့ Input မှ ရယူရန်
                                // show loading indicator
                                Dialogs.showLoadingDialog(context, _keyLoader);
                                bool status = await Provider.of<UserProvider>(context, listen:false).loginWithEmailPlz(email: _emailTextETextEditingController.text, password: _passwordTextETextEditingController.text);
                                // hide loading indicator
                                Navigator.pop(context);

                                print("My status is "+status.toString());
                                if(status == true){
                                  Provider.of<UserProvider>(context, listen:false).setEmailToSP(_emailTextETextEditingController.text);
                                  Provider.of<UserProvider>(context, listen:false).setPasswordToSP(_passwordTextETextEditingController.text);

                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfilePage()));
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
                                    title: 'SORRY',
                                    desc: 'Can not allow to sign in',
                                    showCloseIcon: true,
                                    // btnCancelOnPress: () {},
                                    btnOkOnPress: () {},
                                  ).show();

                                }


                              },
                              // color: Colors.indigoAccent[400],
                              color: Color(getColorHexFromStr('#FFCE55')),
                              shape: RoundedRectangleBorder(
                                // side: BorderSide(
                                //   color: Colors.black,
                                // ),
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: Text("Log in",style: TextStyle(
                                fontWeight: FontWeight.w600,fontSize: 16,
                                // color: Colors.white70

                              ),),),
                            // Row(children: <Widget>[
                            //   Expanded(
                            //     child: new Container(
                            //         margin: const EdgeInsets.only(left: 10.0, right: 20.0),
                            //         child: Divider(
                            //           color: Colors.black,
                            //           height: 36,
                            //         )),
                            //   ),
                            //   Text("OR"),
                            //   Expanded(
                            //     child: new Container(
                            //         margin: const EdgeInsets.only(left: 20.0, right: 10.0),
                            //         child: Divider(
                            //           color: Colors.black,
                            //           height: 36,
                            //         )),
                            //   ),
                            // ]),
                            // Padding(
                            //   padding: const EdgeInsets.all(20.0),
                            //   child: Row(
                            //     mainAxisAlignment: MainAxisAlignment.center,
                            //     children: [
                            //
                            //       //********Sing In with google account******
                            //       CustomWidgets.socialButtonCircle(
                            //           googleColor, FontAwesomeIcons.googlePlusG,
                            //           iconColor: Colors.white,
                            //           //onTap: _signInWithGoogle
                            //
                            //           onTap: ()async{
                            //             print("Hello sign in with google");
                            //             bool status = await _signInWithGoogle();
                            //             if(status){
                            //               Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfilePage()));
                            //             }
                            //             else{
                            //               // alert to notify user for google account login failure
                            //               AwesomeDialog(
                            //                 context: context,
                            //                 dialogType: DialogType.warning,
                            //                 borderSide: const BorderSide(
                            //                   color: Colors.green,
                            //                   width: 2,
                            //                 ),
                            //                 width: 280,
                            //                 buttonsBorderRadius: const BorderRadius.all(
                            //                   Radius.circular(2),
                            //                 ),
                            //                 dismissOnTouchOutside: true,
                            //                 dismissOnBackKeyPress: false,
                            //                 onDismissCallback: (type) {
                            //                   ScaffoldMessenger.of(context).showSnackBar(
                            //                     SnackBar(
                            //                       content: Text('Try Again'),
                            //                     ),
                            //                   );
                            //                 },
                            //                 headerAnimationLoop: false,
                            //                 animType: AnimType.bottomSlide,
                            //                 title: 'SORRY',
                            //                 desc: 'Something wrong with Google Login',
                            //                 showCloseIcon: true,
                            //                 // btnCancelOnPress: () {},
                            //                 btnOkOnPress: () {},
                            //               ).show();
                            //             }
                            //           }
                            //       ),
                            //       // CustomWidgets.socialButtonCircle(
                            //       //     whatsappColor, FontAwesomeIcons.whatsapp,
                            //       //     iconColor: Colors.white, onTap: () {
                            //       // }),
                            //       CustomWidgets.socialButtonCircle(
                            //           appleColor,FontAwesomeIcons.apple,
                            //           iconColor: Colors.grey, onTap: () {
                            //       }),
                            //       CustomWidgets.socialButtonCircle(
                            //           facebookColor, FontAwesomeIcons.facebookF,
                            //           iconColor: Colors.white, onTap: () {
                            //       }),
                            //     ],
                            //   ),
                            // ),
                            Padding(
                              padding: const EdgeInsets.only(top:18.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Don't have an account?"),
                                  InkWell(
                                    child: Padding(
                                      padding: const EdgeInsets.only(left:8.0),
                                      child: Text("Sign Up",style: TextStyle(
                                        // fontWeight: FontWeight.w600,
                                          color: Colors.red
                                      ),),
                                    ),
                                    onTap: (){
                                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SignUpPage()));
                                    },
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Provider.of<UserProvider>(context, listen: false).getEmailFromSP() != "" ?
          CustomBackKey()
              :Container()
        ],
      )
    );
  }

  Widget backgroudImage() {
    // return ShaderMask(
    //   shaderCallback: (bounds) => LinearGradient(
    //     colors: [Colors.black, Colors.black12],
    //     begin: Alignment.bottomCenter,
    //     end: Alignment.center,
    //   ).createShader(bounds),
    //   blendMode: BlendMode.darken,
    //   child: Container(
    //     decoration: BoxDecoration(
    //       image: DecorationImage(
    //         image: AssetImage('assets/images/myan_quiz_background_image.png'), /// change this to your  image directory
    //         fit: BoxFit.cover,
    //         //colorFilter: ColorFilter.mode(Colors.black45, BlendMode.darken),
    //       ),
    //     ),
    //   ),
    // );
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/myan_quiz_background_image.png'), /// change this to your  image directory
          fit: BoxFit.cover,
          //colorFilter: ColorFilter.mode(Colors.black45, BlendMode.darken),
        ),
      ),
    );
  }

  Widget makeInput({txtEditiongContorller,label, obsureText = false}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w400,
            color: Colors.black87
        ),),
        SizedBox(height: 5,),
        TextField(
          controller: txtEditiongContorller,
          obscureText: obsureText,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.grey,
              ),
            ),
            border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey)
            ),
          ),
        ),
        SizedBox(height: 30,)

      ],
    );
  }
}






