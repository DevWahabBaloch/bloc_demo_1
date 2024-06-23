import 'package:bloc_demo_1/features/auth/bloc/login_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitialState());

  void attemptToLogin() {
    emit(LoginLoadingState());
    Future.delayed(const Duration(seconds: 5), () {
      emit(LoginSuccessState(status: 'Data Success'));
    });

    Future.delayed(const Duration(seconds: 10), () {
      emit(LoginFailureState(message: 'Error Happened'));
    });
  }
}
