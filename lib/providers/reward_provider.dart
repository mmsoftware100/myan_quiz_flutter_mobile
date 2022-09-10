import 'package:flutter/material.dart';
import 'package:myan_quiz/domain/entities/answer.dart';
import 'package:myan_quiz/domain/entities/bill_exchange_rate.dart';
import 'package:myan_quiz/domain/entities/category.dart';
import 'package:myan_quiz/domain/entities/description.dart';
import 'package:myan_quiz/domain/entities/telephone_operator.dart';
import 'package:myan_quiz/domain/entities/user.dart';

import '../domain/entities/game_type.dart';
import '../domain/entities/question.dart';

class RewardProvider extends ChangeNotifier{
  // data repo
  List<TelephoneOperator> telephoneOperators = [];
  TelephoneOperator telephoneOperator = TelephoneOperator.sample;


  List<BillExchangeRate> billExchangeRates = [];
  BillExchangeRate billExchangeRate = BillExchangeRate.sample;



  // methods

  Future<bool> selectTelephoneOperators({required String accessToken}){
    bool status = true;
    return Future.delayed(Duration(seconds: 5),(){
      telephoneOperators = [
        TelephoneOperator(id: 1, name: "MTP", image: "https://ssl.gstatic.com/ui/v1/icons/mail/rfr/logo_gmail_lockup_default_1x_r5.png"),
        TelephoneOperator(id: 2, name: "ATOM", image: "https://pub.dev/static/hash-t3bgi1vk/img/pub-dev-logo-2x.png"),
        TelephoneOperator(id: 3, name: "MyTel", image: "https://app-cdn.clickup.com/assets/images/brand/clickup-symbol_color.svg"),
        TelephoneOperator(id: 4, name: "Ooredoo", image: "https://ssl.gstatic.com/ui/v1/icons/mail/rfr/logo_gmail_lockup_default_1x_r5.png"),
      ];
      notifyListeners();
      return status;
    });
  }
  void setTelephoneOperator(TelephoneOperator telephoneOperatorUpdate){
    telephoneOperator = telephoneOperatorUpdate;
    notifyListeners();
  }


  Future<bool> selectBillExchangeRates({required String accessToken}){
    bool status = true;
    return Future.delayed(Duration(seconds: 5),(){
      billExchangeRates = [
        BillExchangeRate(id: 1, name: "Bill 1000",coin: 3000, image: "https://ssl.gstatic.com/ui/v1/icons/mail/rfr/logo_gmail_lockup_default_1x_r5.png"),
        BillExchangeRate(id: 2, name: "Bill 3000",coin: 9000, image: "https://pub.dev/static/hash-t3bgi1vk/img/pub-dev-logo-2x.png"),
        BillExchangeRate(id: 3, name: "Bill 5000",coin: 15000, image: "https://app-cdn.clickup.com/assets/images/brand/clickup-symbol_color.svg"),
        BillExchangeRate(id: 4, name: "Bill 10,000",coin: 30000, image: "https://ssl.gstatic.com/ui/v1/icons/mail/rfr/logo_gmail_lockup_default_1x_r5.png"),
      ];
      notifyListeners();
      return status;
    });
  }
  void setBillExchangeRate(BillExchangeRate billExchangeRateUpdate){
    billExchangeRate = billExchangeRateUpdate;
    notifyListeners();
  }

}

