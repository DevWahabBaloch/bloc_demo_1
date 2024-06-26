import 'dart:developer';

import 'package:bloc_demo_1/core/app_button.dart';
import 'package:bloc_demo_1/core/di/service_locator.dart';
import 'package:bloc_demo_1/features/auth/bloc/login_cubit.dart';
import 'package:bloc_demo_1/features/auth/bloc/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginPage extends StatelessWidget {
   LoginPage({super.key});

  final LoginCubit _loginCubit = sl<LoginCubit>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            BlocBuilder<LoginCubit, LoginState>(
              bloc: _loginCubit,
              builder: (context, state) {
                if (state is LoginLoadingState) {
                  log('message: Loading state');
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
                if (state is LoginFailureState) {
                  log('message: Failure state');
                  return Text(
                    state.message,
                    style: const TextStyle(fontSize: 22.0),
                  );
                }
                if (state is LoginSuccessState) {
                  log('message: Success state');
                  return Text(
                    state.status,
                    style: const TextStyle(fontSize: 22.0),
                  );
                }

                return Text(
                  'state:  Initial State',
                  style: const TextStyle(fontSize: 22.0),
                );
              },
            ),
            const SizedBox(height: 50.0),
            AppButton(
              onPressed: () {
                _loginCubit.attemptToLogin();
              },
              title: ' Tapp',
            ),
          ],
        ),
      ),
    );
  }
}
