
import 'package:medical_app/core/networking/api_error_handler.dart';
import '../data/models/specializations_response_model.dart';

sealed class HomeState{}

final class HomeInitial extends HomeState {}
final class SpecializationsLoading extends HomeState {}
final class SpecializationsSuccess extends HomeState {
  final List<SpecializationsData?>? specializationDataList;
  SpecializationsSuccess(this.specializationDataList);
}
final class SpecializationsError extends HomeState {
  final ErrorHandler errorHandler;
  SpecializationsError(this.errorHandler);
}
final class DoctorsSuccess extends HomeState {
  final List<Doctors?>? doctorsList;
  DoctorsSuccess(this.doctorsList);
}
final class DoctorsError extends HomeState {
  final ErrorHandler errorHandler;
  DoctorsError(this.errorHandler);
}
