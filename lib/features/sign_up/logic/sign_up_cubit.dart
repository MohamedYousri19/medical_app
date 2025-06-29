import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medical_app/features/sign_up/data/models/sign_up_request_body.dart';
import 'package:medical_app/features/sign_up/data/repos/sign_up_repo.dart';
import 'package:medical_app/features/sign_up/logic/sign_up_states.dart';

class SignupCubit extends Cubit<SignUpState> {
  final SignUpRepo _signupRepo;

  SignupCubit(this._signupRepo) : super(SignUpInitial());

  TextEditingController nameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController phoneController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController confirmPasswordController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  void emitSignupStates() async{
    emit(SignUpLoadingState());
    final response = await _signupRepo.signup(SignupRequestBody(
        name: nameController.text,
        email: emailController.text,
        phone: phoneController.text,
        password: passwordController.text,
        passwordConfirmation: confirmPasswordController.text,
        gender: 0));
    response.when(
        success: (signupResponse){
          emit(SignUpSuccessState(signupResponse: signupResponse));
        },
        failure: (error){
          emit(SignUpErrorState(error: error.apiErrorModel.message ?? ''));
        }
    );
  }
}
