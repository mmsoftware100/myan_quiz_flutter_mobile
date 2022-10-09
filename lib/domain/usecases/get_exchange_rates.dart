
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:myan_quiz/domain/entities/bill_exchange_rate.dart';
import 'package:myan_quiz/domain/entities/telephone_operator.dart';
import 'package:myan_quiz/domain/repositories/reward_repository.dart';

import '../../core/error/failures.dart';
import '../../core/usercase/usecase.dart';

class GetExchangeRates implements UseCase<List<BillExchangeRate>,GetExchangeRatesParams>{
  final RewardRepository rewardRepository;

  GetExchangeRates({required this.rewardRepository});

  @override
  Future<Either<Failure, List<BillExchangeRate>>> call(GetExchangeRatesParams params) async{
    //throw UnimplementedError();
    print("GetExchangeRates->call");
    return await rewardRepository.selectBillExchangeRates(accessToken: params.accessToken, page: params.page);
  }
}

class GetExchangeRatesParams extends Equatable {
  final String accessToken;
  final int page;

  const GetExchangeRatesParams({required this.accessToken, required this.page});

  @override
  List<Object> get props => [accessToken, page];
}
