import 'package:flutter/material.dart';

@immutable
abstract class LoginState {}

class LoginInitialState extends LoginState {}

class LoginLoadingState extends LoginState {}

class LoginSuccessState extends LoginState {
  final String status;

  LoginSuccessState({required this.status});
}

class LoginFailureState extends LoginState {
  final String message;

  LoginFailureState({required this.message});
}