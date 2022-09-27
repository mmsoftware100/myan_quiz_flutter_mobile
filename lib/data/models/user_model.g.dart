// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) => UserModel(
      id: json['id'] as int? ?? 0,
      name: json['name'] as String? ?? 'name',
      rank: json['rank'] as String? ?? 'rank',
      level: json['level'] as String? ?? 'level',
      nextLevel: json['next_level'] as String? ?? 'nextLevel',
      levelProgress: json['level_progress'] as int? ?? 0,
      questionTotal: json['question_total'] as int? ?? 0,
      questionPassed: json['question_passed'] as int? ?? 0,
      questionFailed: json['question_failed'] as int? ?? 0,
      coinTotal: json['coin_total'] as int? ?? 0,
      coinExchanged: json['coin_exchanged'] as int? ?? 0,
      coinCurrent: json['coin_current'] as int? ?? 0,
      createdAt: json['created_at'] as String? ?? 'createdAt',
      modifiedAt: json['modified_at'] as String? ?? 'modifiedAt',
      createdAgo: json['created_ago'] as String? ?? 'modifiedAt',
      modifiedAgo: json['modified_ago'] as String? ?? 'modifiedAgo',
      accessToken: json['access_token'] as String? ?? 'accessToken',
    );

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'rank': instance.rank,
      'level': instance.level,
      'next_level': instance.nextLevel,
      'level_progress': instance.levelProgress,
      'question_total': instance.questionTotal,
      'question_passed': instance.questionPassed,
      'question_failed': instance.questionFailed,
      'coin_total': instance.coinTotal,
      'coin_exchanged': instance.coinExchanged,
      'coin_current': instance.coinCurrent,
      'created_at': instance.createdAt,
      'modified_at': instance.modifiedAt,
      'created_ago': instance.createdAgo,
      'modified_ago': instance.modifiedAgo,
      'access_token': instance.accessToken,
    };
