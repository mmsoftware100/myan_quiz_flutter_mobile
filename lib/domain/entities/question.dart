import 'package:myan_quiz/domain/entities/answer.dart';
import 'package:myan_quiz/domain/entities/description.dart';

class Question{

  int id;
  String name; // display name
  String image;
  List<Answer> answers;
  Description description;

  Question({
    required this.id,
    required this.name,
    required this.image,
    required this.answers,
    required this.description
  });



  static Question get sample {
    return Question(id: 0, name: "name", image: "image", answers: [], description: Description.sample);
  }
}