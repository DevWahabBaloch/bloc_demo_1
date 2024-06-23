import 'package:flutter/material.dart';

@immutable
abstract class SettingsState {}

class SettingsInitialState extends SettingsState {}

class SettingsLoadingState extends SettingsState {}

class SettingsSuccessState extends SettingsState {
  final String status;

  SettingsSuccessState({required this.status});
}

class SettingsFailureState extends SettingsState {
  final String message;

  SettingsFailureState({required this.message});
}