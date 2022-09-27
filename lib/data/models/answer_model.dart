import 'package:json_annotation/json_annotation.dart';
import 'package:myan_quiz/domain/entities/answer.dart';

import '../../domain/entities/category.dart';
import '../../domain/entities/user.dart';


part 'answer_model.g.dart';
@JsonSerializable(explicitToJson: true)
class AnswerModel{

  @JsonKey(defaultValue: 0)
  int id;

  @JsonKey(name: 'name' ,defaultValue: "name")
  String name;

  AnswerModel({
    required this.id,
    required this.name
  });

  factory AnswerModel.fromJson(Map<String, dynamic> json) {
    return _$AnswerModelFromJson(json);
  }
  Map<String, dynamic> toJson() => _$AnswerModelToJson(this);

  Answer toEntity(){
    return Answer(id: id, name: name);
  }
}


