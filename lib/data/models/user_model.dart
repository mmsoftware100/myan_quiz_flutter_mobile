import 'package:json_annotation/json_annotation.dart';
import 'package:myan_quiz/data/models/user_statistics_model.dart';

import '../../domain/entities/user.dart';
import '../../domain/entities/user_statistics.dart';


part 'user_model.g.dart';
@JsonSerializable(explicitToJson: true)
class UserModel{

  @JsonKey(defaultValue: 0)
  int id;

  @JsonKey(name: 'uid' ,defaultValue: "uid")
  String uid;

  @JsonKey(name: 'name' ,defaultValue: "name")
  String name;

  @JsonKey(name: 'email' ,defaultValue: "email")
  String email;

  @JsonKey(name: 'password' ,defaultValue: "password")
  String password;

  @JsonKey(name: 'access_token' ,defaultValue: "access_token")
  String accessToken;


  @JsonKey(name: 'phone' ,defaultValue: "phone")
  String phone;
  @JsonKey(name: 'city' ,defaultValue: "city")
  String city;
  @JsonKey(name: 'age' ,defaultValue: "age")
  String age;
  @JsonKey(name: 'gender' ,defaultValue: "gender")
  String gender;
  @JsonKey(name: 'photo_url' ,defaultValue: "photo_url")
  String photoUrl;
  @JsonKey(name: 'role_id' ,defaultValue: 0)
  int roleId;
  @JsonKey(name: 'created_at' ,defaultValue: "created_at")
  String createdAt;
  @JsonKey(name: 'updated_at' ,defaultValue: "updated_at")
  String updatedAt;

  @JsonKey(name: 'user_statistics' ,defaultValue: null)
  UserStatisticsModel? userStatistics;

  UserModel({
    required this.id,
    required this.uid,
    required this.name,
    required this.email,
    required this.password,
    required this.accessToken,
    required this.phone,
    required this.city,
    required this.age,
    required this.gender,
    required this.photoUrl,
    required this.roleId,
    required this.createdAt,
    required this.updatedAt,
    required this.userStatistics,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return _$UserModelFromJson(json);
  }
  Map<String, dynamic> toJson() => _$UserModelToJson(this);

  User toEntity(){
    return User(
        id: id,
        uid: uid,
        name: name,
        email: email,
        password: password,
        accessToken: accessToken,
        phone: phone,
        city: city,
        age: age,
        gender: gender,
        photoUrl: photoUrl,
        roleId: roleId,
        createdAt: createdAt,
        updatedAt: updatedAt,
        userStatistics: userStatistics?.toEntity() ?? UserStatistics.sample
    );
  }
}


