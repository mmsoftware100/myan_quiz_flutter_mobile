
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:myan_quiz/domain/entities/category.dart';
import 'package:myan_quiz/domain/entities/question.dart';
import 'package:myan_quiz/domain/repositories/quiz_repository.dart';

import '../../core/error/failures.dart';
import '../../core/usercase/usecase.dart';
import '../entities/user.dart';
import '../repositories/user_repository.dart';

class SubmitAnswer implements UseCase<Question,SubmitAnswerParams>{
  final QuizRepository quizRepository;

  SubmitAnswer({required this.quizRepository});

  @override
  Future<Either<Failure, Question>> call(SubmitAnswerParams params) async{
    //throw UnimplementedError();
    return await quizRepository.selectQuestionByCategoryId(accessToken: params.accessToken, categoryId: params.categoryId);
  }
}

class SubmitAnswerParams extends Equatable {
  final String accessToken;
  final int gamePlayTypeId;
  final int questionId;
  final int answerId;

  const SubmitAnswerParams({required this.accessToken,required this.gamePlayTypeId, required this.questionId, required this.answerId});

  @override
  List<Object> get props => [accessToken,gamePlayTypeId, questionId, answerId];
}
