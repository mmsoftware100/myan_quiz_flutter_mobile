import 'dart:convert';

import 'package:dio/dio.dart';

import '../../domain/entities/user.dart';

abstract class UserRemoteDataSource{
  Future<User> login({required String accessToken, required String fcmToken});
}

class UserRemoteDataSourceImpl implements UserRemoteDataSource{
  final Dio client;
  UserRemoteDataSourceImpl({required this.client});

  @override
  Future<User> login({required String accessToken, required String fcmToken}) {
    // TODO: implement login
    throw UnimplementedError();
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