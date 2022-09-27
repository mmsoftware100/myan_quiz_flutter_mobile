import '../../domain/entities/category.dart';
import '../../domain/entities/question.dart';
import '../../domain/entities/user.dart';

abstract class QuizRemoteDatasource{
  Future<List<Category>> selectCategories({
    required String accessToken
  });

  Future<Question> selectQuestionByCategoryId({
    required String accessToken,
    required int categoryId
  });

  Future<User> submitAnswer({
    required String accessToken,
    required int gameTypeId,
    required int questionId,
    required int answerId
  });
}