import 'package:medical_app/core/networking/api_error_handler.dart';
import 'package:medical_app/core/networking/api_result.dart';
import 'package:medical_app/core/networking/api_services.dart';
import 'package:medical_app/features/sign_up/data/models/sign_up_response.dart';

import '../models/sign_up_request_body.dart';

class SignUpRepo{
  final ApiServices _apiServices ;
  SignUpRepo(this._apiServices);
  
  Future<ApiResult<SignupResponse>> signup (SignupRequestBody signupRequestBody) async{
    try{
      final response = await _apiServices.signup(signupRequestBody);
      return ApiResult.success(response);
    }
        catch(error){
      return ApiResult.failure(ErrorHandler.handle(error));
        }
  }
}