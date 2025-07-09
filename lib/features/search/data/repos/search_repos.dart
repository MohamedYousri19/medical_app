import 'package:medical_app/core/networking/api_error_handler.dart';
import 'package:medical_app/core/networking/api_result.dart';
import 'package:medical_app/core/networking/api_services.dart';
import '../models/doctor_details.dart';

class SearchRepo {
  final ApiServices _apiServices;

  SearchRepo(this._apiServices);

  Future<ApiResult<DoctorDetails>> getAllDoctors() async {
    try{
      final response = await _apiServices.getAllDoctors();
      return ApiResult.success(response);
    }catch(error){
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }

}