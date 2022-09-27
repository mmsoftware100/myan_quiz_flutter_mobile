import '../../domain/entities/category.dart';
import '../../domain/entities/question.dart';
import '../../domain/entities/user.dart';

abstract class NetworkInterface{
  Future<Map<String,dynamic>> getRequest({required String url,required Map<String,dynamic> data, String barrierToken});
  Future<Map<String,dynamic>> postRequest({required String url,required Map<String,dynamic> data});
  Future<Map<String,dynamic>> putRequest({required String url,required int id, required Map<String,dynamic> data});
  Future<Map<String,dynamic>> deleteRequest({required String url,required int id});
}
/*
class NetworkInterfaceImpl implements NetworkInterface{
  @override
  Future<Map<String, dynamic>> deleteRequest({required String url, required Map<String, dynamic> data}) {
    // TODO: implement deleteRequest
    throw UnimplementedError();
  }

  @override
  Future<Map<String, dynamic>> getRequest({required String url, required Map<String, dynamic> data}) {
    // TODO: implement getRequest
    throw UnimplementedError();
  }

  @override
  Future<Map<String, dynamic>> postRequest({required String url, required Map<String, dynamic> data}) {
    // TODO: implement postRequest
    throw UnimplementedError();
  }

  @override
  Future<Map<String, dynamic>> putRequest({required String url, required Map<String, dynamic> data}) {
    // TODO: implement putRequest
    throw UnimplementedError();
  }

}

 */