import 'package:dio/dio.dart';
import 'package:medical_app/core/networking/api_constants.dart';
import 'package:medical_app/features/login/data/models/login_response.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

import '../../features/login/data/models/login_request_body.dart';

part 'api_services.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)

abstract class ApiServices{
  factory ApiServices( Dio dio, {String baseUrl}) = _ApiServices ;
  @POST(ApiConstants.login)
  Future<LoginResponse> login(
      @Body() LoginRequestBody loginRequestBody,
      );
}