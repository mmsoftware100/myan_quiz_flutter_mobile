import 'package:dartz/dartz.dart';
import 'package:myan_quiz/core/error/failures.dart';
import 'package:myan_quiz/domain/entities/user.dart';
abstract class UserRepository{
  Future<Either<Failure, User>> login({
    required String accessToken
  });
}