import 'package:addan_api/Model/UsersModel.dart';
import 'package:dio/dio.dart';

class UsersService
{
  static Dio dio = Dio();
  static Future<List<UsersModel>>getData()async
  {
    try{
    Response response =  await dio.get(
      'https://randomuser.me/api/?results=20'
    );
    if(response.statusCode==200)
    {
      return UsersModel.fromjson(response.data);
    }
    else
    {
      throw Exception("Error");
    }
    }catch(e)
    {
      throw Exception("The Error is $e");
    }
  }
}