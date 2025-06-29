import 'package:medical_app/features/sign_up/data/models/sign_up_response.dart';

sealed class SignUpState {}

final class SignUpInitial extends SignUpState {}

final class SignUpLoadingState extends SignUpState {}
final class SignUpSuccessState extends SignUpState {
  final SignupResponse signupResponse ;
  SignUpSuccessState({required this.signupResponse});
}
final class SignUpErrorState extends SignUpState {
  final String error ;
  SignUpErrorState({required this.error});
}