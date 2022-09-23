import 'package:dartz/dartz.dart';
import 'package:myan_quiz/core/error/failures.dart';
import 'package:myan_quiz/data/datasources/user_remote_datasource.dart';
import 'package:myan_quiz/domain/entities/user.dart';
import 'package:myan_quiz/domain/repositories/user_repository.dart';


class UserRepositoryImpl implements UserRepository{
  UserRemoteDataSource userRemoteDataSource;

  UserRepositoryImpl({required this.userRemoteDataSource});


  @override
  Future<Either<Failure, User>> login({required String accessToken, required String fcmToken}) async{
    try{
      User user =  await userRemoteDataSource.login(accessToken: accessToken, fcmToken: fcmToken);
      return Right(user);
    }
    catch(exp){
      return Left(ServerFailure());
    }
  }

}
