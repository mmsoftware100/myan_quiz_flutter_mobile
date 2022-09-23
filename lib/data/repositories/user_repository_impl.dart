import 'package:dartz/dartz.dart';
import 'package:myan_quiz/core/error/failures.dart';
import 'package:myan_quiz/domain/entities/user.dart';
import 'package:myan_quiz/domain/repositories/user_repository.dart';

/*
class UserRepositoryImpl implements UserRepository{
  BankInfoRemoteDataSource bankInfoRemoteDataSource;

  BankInfoRepositoryImpl({required this.bankInfoRemoteDataSource});
  @override
  Future<Either<Failure, List<BankInfo>>> getBankInfoList() async{
    try{
      List<BankInfo> bankInfoList =  await bankInfoRemoteDataSource.getBankInfoList();
      return Right(bankInfoList);
    }
    catch(exp){
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, User>> login({required String accessToken, required String fcmToken}) {
    // TODO: implement login
    throw UnimplementedError();
  }

}

 */