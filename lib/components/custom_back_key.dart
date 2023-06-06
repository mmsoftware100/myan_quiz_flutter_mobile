import 'package:flutter/material.dart';

class CustomBackKey extends StatefulWidget {
  const CustomBackKey({Key? key}) : super(key: key);

  @override
  State<CustomBackKey> createState() => _CustomBackKeyState();
}

class _CustomBackKeyState extends State<CustomBackKey> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 48),
      child: IconButton(
        icon: Icon(Icons.arrow_back_ios_new,color: Colors.white,),
        onPressed: (){
          Navigator.pop(context);
        },
      ),
    );
  }
}
