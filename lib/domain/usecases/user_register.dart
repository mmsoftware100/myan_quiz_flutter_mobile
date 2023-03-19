
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../core/error/failures.dart';
import '../../core/usercase/usecase.dart';
import '../entities/user.dart';
import '../repositories/user_repository.dart';

class UserRegister implements UseCase<User,UserRegisterParams>{
  final UserRepository userRepository;

  UserRegister({required this.userRepository});

  @override
  Future<Either<Failure, User>> call(UserRegisterParams params) async{
    return await userRepository.login(accessToken: params.email, fcmToken: params.password);
  }
}

class UserRegisterParams extends Equatable {
  final String email;
  final String password;
  final String phone;
  final String city;
  final String age;
  final String gender;

  const UserRegisterParams({
    required this.email,
    required this.password,
    required this.phone,
    required this.city,
    required this.age,
    required this.gender
  });

  @override
  List<Object> get props => [email, password, phone, city, age, gender];
}
