import 'package:json_annotation/json_annotation.dart';

import '../../domain/entities/user.dart';


part 'user_model.g.dart';
@JsonSerializable(explicitToJson: true)
class UserModel{

  @JsonKey(defaultValue: 0)
  int id;

  @JsonKey(name: 'name' ,defaultValue: "name")
  String name;

  @JsonKey(name: 'rank' ,defaultValue: "rank")
  String rank;

  @JsonKey(name: 'level' ,defaultValue: "level")
  String level;

  @JsonKey(name: 'next_level' ,defaultValue: "nextLevel")
  String nextLevel;

  @JsonKey(name: 'level_progress' ,defaultValue: 0)
  int levelProgress;

  @JsonKey(name: 'question_total' ,defaultValue: 0)
  int questionTotal;

  @JsonKey(name: 'question_passed' ,defaultValue: 0)
  int questionPassed;

  @JsonKey(name: 'question_failed' ,defaultValue: 0)
  int questionFailed;

  @JsonKey(name: 'coin_total' ,defaultValue: 0)
  int coinTotal;

  @JsonKey(name: 'coin_exchanged' ,defaultValue: 0)
  int coinExchanged;

  @JsonKey(name: 'coin_current' ,defaultValue: 0)
  int coinCurrent;

  @JsonKey(name: 'created_at' ,defaultValue: "createdAt")
  String createdAt;

  @JsonKey(name: 'modified_at' ,defaultValue: "modifiedAt")
  String modifiedAt;

  @JsonKey(name: 'created_ago' ,defaultValue: "modifiedAt")
  String createdAgo;

  @JsonKey(name: 'modified_ago' ,defaultValue: "modifiedAgo")
  String modifiedAgo;

  @JsonKey(name: 'access_token' ,defaultValue: "accessToken")
  String accessToken;

  UserModel({
    required this.id,
    required this.name,
    required this.rank,
    required this.level,
    required this.nextLevel,
    required this.levelProgress,
    required this.questionTotal,
    required this.questionPassed,
    required this.questionFailed,
    required this.coinTotal,
    required this.coinExchanged,
    required this.coinCurrent,
    required this.createdAt,
    required this.modifiedAt,
    required this.createdAgo,
    required this.modifiedAgo,
    required this.accessToken
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return _$UserModelFromJson(json);
  }
  Map<String, dynamic> toJson() => _$UserModelToJson(this);

  User toEntity(){
    return User.sample;
    /*
    return User(
        id: id,
        name: name,
        rank: rank,
        level: level,
        nextLevel: nextLevel,
        levelProgress: levelProgress,
        questionTotal: questionTotal,
        questionPassed: questionPassed,
        questionFailed: questionFailed,
        coinTotal: coinTotal,
        coinExchanged: coinExchanged,
        coinCurrent: coinCurrent,
        createdAt: DateTime.tryParse(createdAt) ?? DateTime.now() ,
        modifiedAt: DateTime.tryParse(modifiedAt) ?? DateTime.now() ,
        createdAgo: createdAgo,
        modifiedAgo: modifiedAgo,
        accessToken: accessToken
    );
    
     */
  }
}


