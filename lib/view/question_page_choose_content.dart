import 'package:flutter/material.dart';
import 'package:myan_quiz/utils/global.dart';
import 'package:myan_quiz/view/question_page_answer.dart';

class QuestionPageChooseContent extends StatefulWidget {
  const QuestionPageChooseContent({Key? key}) : super(key: key);

  @override
  _QuestionPageChooseContentState createState() => _QuestionPageChooseContentState();
}

class _QuestionPageChooseContentState extends State<QuestionPageChooseContent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.transparent,
        backgroundColor: Color(getColorHexFromStr('#48CEAD')),
        body: SafeArea(
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
                        color: Colors.white,
                        borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30))
                      // BorderRadius.all(Radius.circular(30))
                    ),
                    child: Image.asset("assets/images/answer_baby.png"),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("မေးခွန်းခေါင်းစဉ်တစ်ခုကိုရွေးချယ်ပါ",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 60,
                      width: MediaQuery.of(context).size.width/1.5,
                      child: InkWell(
                        child: Card(
                          child: Center(child: Text("ကိုးကွယ်ရာဘာသာ")),
                        ),
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>QuestionPageAnswer()));
                        },
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 60,
                      width: MediaQuery.of(context).size.width/1.5,
                      child: InkWell(
                        child: Card(
                          child: Center(child: Text("အထွေထွေဗဟုသုတ")),
                        ),
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>QuestionPageAnswer()));

                        },
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 60,
                      width: MediaQuery.of(context).size.width/1.5,
                      child: InkWell(
                        child: Card(
                          child: Center(child: Text("အနုပညာရှင်များ")),
                        ),
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>QuestionPageAnswer()));

                        },
                      ),
                    ),
                  )

                ],
              ),
            ),
          ),
        ),
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
    );

  }
}
