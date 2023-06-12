
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/*
class TermsAndConditionsAlertDialog extends StatefulWidget {
  TermsAndConditionsAlertDialogState createState() {
    return new TermsAndConditionsAlertDialogState();
  }
}

class TermsAndConditionsAlertDialogState extends State<TermsAndConditionsAlertDialog> {
  static bool _isChecked = false;

  static final String _TERMS_AND_CONDITIONS_MESSAGE =
      'blablabla this is a terms and conditions message and a blablababl and a bla bla and a aaaaaaaaaaaa bla';
  static final String _DIALOG_TITLE = 'Terms and Conditions';

  @override
  Widget build(BuildContext context) {
    return new AlertDialog(
      title: new Text(_DIALOG_TITLE),
      content: new Column(
        children: <Widget>[
          new Expanded(
            child: new SingleChildScrollView(
              child: new Text(
                _TERMS_AND_CONDITIONS_MESSAGE,
                style: new TextStyle(fontSize: 50.0),
              ),
            ),
          ),
          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              new Row(
                children: <Widget>[
                  new Text('Accept'),
                  new Checkbox(
                    value: _isChecked,
                    onChanged: (newValue) {
                      setState(() {
                        _isChecked = newValue!;
                      });
                    },
                  ),
                ],
              ),
              new TextButton(
                  onPressed: () {
                    _printDialogResult();
                    _closeDialog();
                  },
                  child: new Text(
                    'Ok',
                    style: TextStyle(color: Colors.white),
                  )),
            ],
          ),
        ],
      ),
    );
  }

  void _printDialogResult() {
    print('You selected 1');
  }

  void _closeDialog() {
    if (_isChecked) {
      Navigator.pop(context);
    }
  }
}

 */

class TermsAndConditionAlertBox{
  static Future<void> showTermsAndCondition(BuildContext context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return CupertinoAlertDialog(
          title: Text('Terms and condition'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('According to https://aungkoman.github.io/myanquiz-tos/index.html, accept our terms and condition '),
                Text(''),
              ],
            ),
          ),
          actions: <Widget>[

            TextButton(
              child: Text('Accept'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

}


