import 'package:myan_quiz/domain/entities/bill_exchange_rate.dart';
import 'package:myan_quiz/domain/entities/telephone_operator.dart';

class BillExchangeStatus{

  int id;
  int telephoneOperatorId;
  int billExchangeRateId;
  int billExchangeStatusId;
  TelephoneOperator telephoneOperator;
  BillExchangeRate billExchangeRate;
  BillExchangeStatus billExchangeStatus;
  DateTime createdAt;
  DateTime modifiedAt;
  String createdAgo;
  String modifiedAgo;

  BillExchangeStatus({
    required this.id,
    required this.telephoneOperatorId,
    required this.billExchangeRateId,
    required this.billExchangeStatusId,
    required this.telephoneOperator,
    required this.billExchangeRate,
    required this.billExchangeStatus,
    required this.createdAt,
    required this.modifiedAt,
    required this.createdAgo,
    required this.modifiedAgo
  });



  static BillExchangeStatus get sample {
    return BillExchangeStatus(
        id: 0,
        telephoneOperatorId: TelephoneOperator.sample.id,
        billExchangeRateId: BillExchangeRate.sample.id,
        billExchangeStatusId: BillExchangeStatus.sample.id,
        telephoneOperator: TelephoneOperator.sample,
        billExchangeRate: BillExchangeRate.sample,
        billExchangeStatus: BillExchangeStatus.sample,
        createdAt: DateTime.now(),
        modifiedAt: DateTime.now(),
        createdAgo: "createdAgo",
        modifiedAgo: "modifiedAgo"
    );
  }
}