
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:myan_quiz/domain/entities/category.dart';
import 'package:myan_quiz/domain/entities/question.dart';
import 'package:myan_quiz/domain/repositories/quiz_repository.dart';

import '../../core/error/failures.dart';
import '../../core/usercase/usecase.dart';
import '../entities/user.dart';
import '../repositories/user_repository.dart';

class GetQuestionByCategoryId implements UseCase<Question,GetQuestionByCategoryid>{
  final QuizRepository quizRepository;

  GetQuestionByCategoryId({required this.quizRepository});

  @override
  Future<Either<Failure, Question>> call(GetQuestionByCategoryid params) async{
    //throw UnimplementedError();
    return await quizRepository.selectQuestionByCategoryId(accessToken: params.accessToken, categoryId: params.categoryId);
  }
}

class GetQuestionByCategoryid extends Equatable {
  final String accessToken;
  final int gamePlayTypeId;
  final int categoryId;

  const GetQuestionByCategoryid({required this.accessToken,required this.gamePlayTypeId, required this.categoryId});

  @override
  List<Object> get props => [accessToken,gamePlayTypeId, categoryId];
}
