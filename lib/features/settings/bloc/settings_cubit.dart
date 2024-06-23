import 'package:bloc_demo_1/features/settings/bloc/settings_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class SettingsCubit extends Cubit<SettingsState> {
  SettingsCubit() : super(SettingsInitialState());

  void attemptToSettings() {
    emit(SettingsLoadingState());
    Future.delayed(const Duration(seconds: 5), () {
      emit(SettingsSuccessState(status: 'Settings Success'));
    });

    Future.delayed(const Duration(seconds: 10), () {
      emit(SettingsFailureState(message: 'Settings Error Happened'));
    });
  }
}
