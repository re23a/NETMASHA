import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netmasha/api/auth.dart';
import 'package:netmasha/blocs/auth_bloc/auth_event.dart';
import 'package:netmasha/blocs/auth_bloc/auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    on<AuthLoginEvent>((event, emit) async {
      emit(LoadingState(isLoading: true));

      if (event.email.isNotEmpty && event.password.isNotEmpty) {
        final response = await Auth().postLogin(
            {"email": event.email.trim(), "password": event.password.trim()});

        if (event.email.trim().isEmpty) {
          emit(AuthLoginErrorState(errorMsg: "Please Enter Your Email"));
          emit(LoadingState(isLoading: false));
        } else if (event.password.isEmpty) {
          emit(LoadingState(isLoading: false));
          emit(AuthLoginErrorState(errorMsg: "Please Enter Your Password"));
        } else if (response.statusCode == 200) {
          emit(LoadingState(isLoading: false));
          emit(AuthLoginSuccessState(type: "login", email: event.email.trim()));
        } else {
          emit(LoadingState(isLoading: false));
          emit(
              AuthLoginErrorState(errorMsg: "Email or Password are incorrect"));
        }
      } else {
        emit(AuthLoginErrorState(errorMsg: 'Please Fill The Required Fields'));
      }
    });

    on<AuthRegisterEvent>((event, emit) async {
      emit(LoadingState(isLoading: true));

      if (event.email.isNotEmpty &&
          event.password.isNotEmpty &&
          event.name.isNotEmpty) {
        emit(LoadingState(isLoading: true));

        final response = await Auth().postRegistration({
          "name": event.name,
          "email": event.email,
          "password": event.password,
          "phone": event.phone,
        });

        if (response.statusCode == 200) {
          emit(LoadingState(isLoading: false));
          emit(AuthRegisterSuccessState(
              email: event.email, type: 'registration'));
        } else {
          emit(LoadingState(isLoading: false));
          emit(AuthRegisterErrorState(errorMsg: response.body));
        }
      } else {
        emit(AuthRegisterErrorState(
            errorMsg: 'Please Fill The Required Fields'));
      }
    });

    on<OTPEvent>((event, emit) async {
      emit(LoadingState(isLoading: true));
      if (event.otpCode.length < 6) {
        emit(AuthOTPErrorState(errorMsg: "Please Enter OTP"));
        emit(LoadingState(isLoading: false));
      } else {
        final response = await Auth()
            .postVerification({"otp": event.otpCode, "email": event.email});
        if (response.statusCode == 200) {
          emit(LoadingState(isLoading: false));
          emit(AuthOTPSuccessState());
        } else {
          emit(AuthOTPErrorState(errorMsg: "Wrong OTP $response"));
          emit(LoadingState(isLoading: false));
        }
      }
    });
  }
}
