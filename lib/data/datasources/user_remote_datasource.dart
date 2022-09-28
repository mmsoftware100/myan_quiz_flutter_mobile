import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:myan_quiz/data/datasources/network_interface.dart';
import 'package:myan_quiz/data/models/user_model.dart';

import '../../domain/entities/user.dart';
import '../const/const.dart';

abstract class UserRemoteDataSource{
  Future<User> login({required String accessToken, required String fcmToken});
}

class UserRemoteDataSourceImpl implements UserRemoteDataSource{
  final NetworkInterface networkInterface;
  UserRemoteDataSourceImpl({required this.networkInterface});

  @override
  Future<User> login({required String accessToken, required String fcmToken}) async{

    var data = {
      "access_token" : accessToken,
      "fcm_token" : fcmToken
    };
    dynamic response = await networkInterface.postRequest(url: loginEndpoint, data: data);
    try{
      //bool status = response['status'];
      //String message = response['msg'];
      var data = response['data'];
      UserModel userModel = UserModel.fromJson(data);
      return userModel.toEntity();
    }
    catch(e){
      rethrow;
    }
  }



}
/*
class BankInfoRemoteDataSourceImpl implements BankInfoRemoteDataSource{
  final Dio client;


  BankInfoRemoteDataSourceImpl({required this.client});
  @override
  Future<List<BankInfo>> getBankInfoList() {
    return _getBankInfoList();
  }

  Future<List<BankInfo>> _getBankInfoList()async{
    try{

      print("BankInfoRemoteDataSourceImpl->_getBankInfoList");
      final response = await client.get(bankInfoEndpoint);
      print(response);
      print("BankInfoRemoteDataSourceImpl->_getBankInfoList response");
      print('Response status: ${response.statusCode}');
      print('Response data: ${response.data}');

      Map<String, dynamic> dataResponse = response.data;
      dynamic dataList =  dataResponse['data'];  // list of content
      print("data is ");
      print(dataList);

      List<BankInfo> bankInfoList = [];
      for(int i=0; i<dataList.length; i++){
        print('dataList[i]');
        print(jsonEncode(dataList[i]));
        try{
          print("serilization try");
          BankInfoModel bankInfoModel = BankInfoModel.fromJson(dataList[i]);
          print("serilization ok");
          bankInfoList.add(bankInfoModel.toEntity());
        }catch(innerExp){
          print('BankInfoRemoteDataSourceImpl->_getBankInfoLis innerExp $innerExp');
        }
      }
      print("BankInfoRemoteDataSourceImpl->_getBankInfoList return promotionList");
      print(bankInfoList);
      return bankInfoList;

    }
    catch(exp){
      print("BankInfoRemoteDataSourceImpl->_getBankInfoList throw exception");
      print(exp);
      rethrow;
    }
  }
}

 */