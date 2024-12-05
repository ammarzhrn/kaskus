import 'dart:convert';

import 'package:kaskus/core/constants/variable.dart';
import 'package:kaskus/data/dataresource/auth_local_datasource.dart';
import 'package:kaskus/data/model/response/auth_response_datasource.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;

class AuthRemoteDatasource{

  Future<Either<String, AuthResponseModel>> login(String email, String password) async {
    final response = await http.post(
      Uri.parse('${Variables.baseUrl}/api/login'),
      headers:{
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
      body: jsonEncode(<String, String>{
        'email': email,
        'password': password
      }),
    );

    if (response.statusCode == 200) {
      await AuthLocalDatasource().removeAuthData();
      return Right(AuthResponseModel.fromJson(response.body));
    } else {
      return Left(response.body);
    }
  }

  Future<Either<String, String>> logout() async {
    final authData = await AuthLocalDatasource().getAuthData();
    final response = await http.post(
      Uri.parse('${Variables.baseUrl}/api/logout'),
      headers:{
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization': 'Bearer ${authData.accessToken}'
      },

    );

    if (response.statusCode == 200) {
      return Right(response.body);
    } else {
      return Left(response.body);
    }
  }

}